/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#include <memory.h> /* for memset */
#include "loc_api.h"

/* Default timeout can be changed using clnt_control() */
static struct timeval TIMEOUT = { 25, 0 };

enum clnt_stat 
rpc_loc_api_null_0x00050001(void *argp, void *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_api_null,
		(xdrproc_t) xdr_void, (caddr_t) argp,
		(xdrproc_t) xdr_void, (caddr_t) clnt_res,
		TIMEOUT));
}

enum clnt_stat 
rpc_loc_api_rpc_glue_code_info_remote_0x00050001(void *argp, rpc_loc_api_rpc_glue_code_info_remote_rets *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_api_rpc_glue_code_info_remote,
		(xdrproc_t) xdr_void, (caddr_t) argp,
		(xdrproc_t) xdr_rpc_loc_api_rpc_glue_code_info_remote_rets, (caddr_t) clnt_res,
		TIMEOUT));
}

enum clnt_stat 
rpc_loc_open_0x00050001(rpc_loc_open_args *argp, rpc_loc_open_rets *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_open,
		(xdrproc_t) xdr_rpc_loc_open_args, (caddr_t) argp,
		(xdrproc_t) xdr_rpc_loc_open_rets, (caddr_t) clnt_res,
		TIMEOUT));
}

enum clnt_stat 
rpc_loc_close_0x00050001(rpc_loc_close_args *argp, rpc_loc_close_rets *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_close,
		(xdrproc_t) xdr_rpc_loc_close_args, (caddr_t) argp,
		(xdrproc_t) xdr_rpc_loc_close_rets, (caddr_t) clnt_res,
		TIMEOUT));
}

enum clnt_stat 
rpc_loc_start_fix_0x00050001(rpc_loc_start_fix_args *argp, rpc_loc_start_fix_rets *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_start_fix,
		(xdrproc_t) xdr_rpc_loc_start_fix_args, (caddr_t) argp,
		(xdrproc_t) xdr_rpc_loc_start_fix_rets, (caddr_t) clnt_res,
		TIMEOUT));
}

enum clnt_stat 
rpc_loc_stop_fix_0x00050001(rpc_loc_stop_fix_args *argp, rpc_loc_stop_fix_rets *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_stop_fix,
		(xdrproc_t) xdr_rpc_loc_stop_fix_args, (caddr_t) argp,
		(xdrproc_t) xdr_rpc_loc_stop_fix_rets, (caddr_t) clnt_res,
		TIMEOUT));
}

enum clnt_stat 
rpc_loc_ioctl_0x00050001(rpc_loc_ioctl_args *argp, rpc_loc_ioctl_rets *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_ioctl,
		(xdrproc_t) xdr_rpc_loc_ioctl_args, (caddr_t) argp,
		(xdrproc_t) xdr_rpc_loc_ioctl_rets, (caddr_t) clnt_res,
		TIMEOUT));
}

enum clnt_stat 
rpc_loc_api_api_versions_0x00050001(void *argp, rpc_loc_api_api_versions_rets *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_api_api_versions,
		(xdrproc_t) xdr_void, (caddr_t) argp,
		(xdrproc_t) xdr_rpc_loc_api_api_versions_rets, (caddr_t) clnt_res,
		TIMEOUT));
}

enum clnt_stat 
rpc_loc_api_null_0x00050002(void *argp, void *clnt_res, CLIENT *clnt)
{
	return (clnt_call(clnt, rpc_loc_api_null,
		(xdrproc_t) xdr_void, (caddr_t) argp,
		(xdrproc_t) xdr_void, (caddr_t) clnt_res,
		TIMEOUT));
}
