use warp::Filter;

#[tokio::main]
async fn main() {

    let address = [0, 0, 0, 0];
    let port = 4646;

    let get = warp::get()
        .map(|| {
            "Hello from warp"
        });

    println!("Listening at {:?}:{}", address, port);
    warp::serve(get)
        .run((address, port))
        .await;
}