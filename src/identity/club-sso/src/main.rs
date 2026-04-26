use std::env;

use actix_web::{App, HttpResponse, HttpServer, Responder, web};
use serde_json::json;

async fn healthz() -> impl Responder {
    HttpResponse::Ok().json(json!({"status":"ok","service":"club-sso"}))
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let port: u16 = env::var("PORT").unwrap_or_else(|_| "50023".to_string()).parse().expect("invalid PORT");
    println!("club-sso listening on :{}", port);
    HttpServer::new(|| App::new().route("/healthz", web::get().to(healthz)))
        .bind(("0.0.0.0", port))?
        .run()
        .await
}
