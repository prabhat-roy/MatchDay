// clip-service — low-latency clip extraction from live feed.

use std::env;

use actix_web::{App, HttpResponse, HttpServer, Responder, web};
use serde_json::json;

async fn healthz() -> impl Responder {
    HttpResponse::Ok().json(json!({"status":"ok","service":"clip-service"}))
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    let port: u16 = env::var("PORT").unwrap_or_else(|_| "50146".to_string()).parse().expect("invalid PORT");
    println!("clip-service listening on :{}", port);
    HttpServer::new(|| App::new().route("/healthz", web::get().to(healthz)))
        .bind(("0.0.0.0", port))?
        .run()
        .await
}
