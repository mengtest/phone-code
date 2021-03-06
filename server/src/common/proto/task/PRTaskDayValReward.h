#ifndef _PRTaskDayValReward_H_
#define _PRTaskDayValReward_H_

#include <weedong/core/seq/seq.h>
#include <proto/common/SMsgHead.h>

class PRTaskDayValReward : public SMsgHead
{
public:
    uint32 id;
    uint32 err;

    PRTaskDayValReward() : id(0), err(0)
    {
        msg_cmd = 1981998351;
    }

    virtual ~PRTaskDayValReward()
    {
    }

    virtual wd::CSeq* clone(void)
    {
        return ( new PRTaskDayValReward(*this) );
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
            && TFVarTypeProcess( id, eType, stream, uiSize )
            && TFVarTypeProcess( err, eType, stream, uiSize )
            && loopend( stream, eType, uiSize );
    }
    operator const char* ()
    {
        return "PRTaskDayValReward";
    }
};

#endif
