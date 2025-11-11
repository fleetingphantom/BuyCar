namespace go admin

include "model.thrift"

// 查看所有咨询记录
struct QueryAllConsultsReq {
}
struct QueryAllConsultsResp {
  required model.BaseResp baseResponse;
  required list<model.Consult> consults;
}

// 添加用户
struct AdminAddUserReq {
  required string user_id;
  required string password;
}
struct AdminAddUserResp {
  required model.BaseResp baseResponse;
}

// 删除用户
struct AdminDeleteUserReq {
  required string user_id;
}
struct AdminDeleteUserResp {
  required model.BaseResp baseResponse;
}

// 查看用户反馈分析
struct QueryFeedbackAnalysisReq {
}
struct QueryFeedbackAnalysisResp {
  required model.BaseResp baseResponse;
  required list<model.Feedback> feedbacks;
}

service AdminService {
  QueryAllConsultsResp queryAllConsults(1: QueryAllConsultsReq req) (api.get="/api/admin/consult/query"),
  AdminAddUserResp adminAddUser(1: AdminAddUserReq req) (api.post="/api/admin/user/add"),
  AdminDeleteUserResp adminDeleteUser(1: AdminDeleteUserReq req) (api.delete="/api/admin/user/delete"),
  QueryFeedbackAnalysisResp queryFeedbackAnalysis(1: QueryFeedbackAnalysisReq req) (api.get="/api/admin/feedback/query")
}