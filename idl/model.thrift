namespace go module

struct BaseResp {
    required i32 code,
    required string message,
}

struct User {
    required string user_id,
    optional string password_hash,
    required bool is_admin,
    required string status,
    required i64 created_at,
    required i64 updated_at,
}

struct Consult {
    required string consult_id,
    optional string user_id,
    optional string budget_range,
    optional string preferred_type,
    optional string use_case,
    optional string fuel_type,
    optional string brand_preference,
    optional string llm_model,
    optional string llm_prompt,
    optional string llm_response,
    optional string recommendations,
    required i64 created_at,
    required i64 updated_at,
}

struct Feedback {
    required i64 id,
    required string user_id,
    optional string consult_id,
    required string content,
    optional i8 rating,
    required i64 created_at,
}

struct Gift {
    required i64 gift_id,
    required string name,
    optional string description,
    required i32 points_cost,
    required i32 stock,
    required string status,
    required i64 created_at,
    required i64 updated_at,
}

struct GiftRedemption {
    required i64 id,
    required i64 gift_id,
    required string user_id,
    required i32 quantity,
    required i32 points_spent,
    required string status,
    required i64 created_at,
}

struct ScoreTransaction {
    required i64 id,
    required string user_id,
    required i32 amount,
    required string type,
    optional string ref_id,
    optional string description,
    required i64 created_at,
}