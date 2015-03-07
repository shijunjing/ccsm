#if !defined STMT_IF_H
#define      STMT_IF_H

/* This is some if() in a comment */

#define IF( _if ) do { if( _if == 0 ) { err = 2; } else if( _if < 0 ) { err = 99;} else { err = 77; } } while( 0 ) 

extern int err;

inline int x_if( int y_if )
{
    int ret_val;

    IF( y_if );

    if( y_if )
    {
        ret_val = 99;
        if( err == 0 )
	{
            ret_val = 1;
	}
    }
    else
    {
        ret_val = 0;
    }
    return ret_val;
}

#endif
