#ifndef _PRFightExtAbleSet_H_
#define _PRFightExtAbleSet_H_

#include <weedong/core/seq/seq.h>
#include <proto/common/SMsgHead.h>
#include <proto/fightextable/SFightExtAbleInfo.h>

class PRFightExtAbleSet : public SMsgHead
{
public:
    uint32 set_type;
    SFightExtAbleInfo fightextable;

    PRFightExtAbleSet() : set_type(0)
    {
        msg_cmd = 1763962368;
    }

    virtual ~PRFightExtAbleSet()
    {
    }

    virtual wd::CSeq* clone(void)
    {
        return ( new PRFightExtAbleSet(*this) );
    }

    virtual bool write( wd::CStream &stream )
    {
        uint32 uiSize = 0;
        return loop( stream, wd::CSeq::eWrite, uiSize );
    }
    virtual bool read( wd::CStream &stream )
    {
        uint32 uiSize = 0;
        return loop( stream, wd::CSeq::eRead, uiSize );
    }

    bool loop( wd::CStream &stream, wd::CSeq::ELoopType eType, uint32& uiSize )
    {
        uint32 _uiSize = 0;
        return SMsgHead::loop( stream, eType, _uiSize )
            && wd::CSeq::loop( stream, eType, uiSize )
            && TFVarTypeProcess( set_type, eType, stream, uiSize )
            && TFVarTypeProcess( fightextable, eType, stream, uiSize )
            && loopend( stream, eType, uiSize );
    }
    operator const char* ()
    {
        return "PRFightExtAbleSet";
    }
};

#endif
