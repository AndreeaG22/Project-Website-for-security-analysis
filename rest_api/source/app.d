import vibe.vibe;
import virus_total;
import db_conn;

import std.stdio;

import vibe.vibe;

void main()
{
    auto dbClient = DBConnection("root", "example", "mongo", "27017", "testing");
    auto virusTotalAPI = new VirusTotalAPI(dbClient);

    auto router = new URLRouter;
    router.registerRestInterface(virusTotalAPI);
    router.get("/", &landing);
    router.get("/signup", &signup);
    router.get("/login", &login);
    router.get("/delete_user", &delete_user);
    router.get("/add_file", &add_file);
    router.get("/addUrl", &addUrl);

    auto settings = new HTTPServerSettings;
    settings.port = 8080;
    settings.bindAddresses = ["0.0.0.0"];
    auto listener = listenHTTP(settings, router);
    scope (exit)
    {
        listener.stopListening();
    }

    logInfo("Please open http://127.0.0.1:8080 in your browser.");
    runApplication();;
}

void landing(HTTPServerRequest req, HTTPServerResponse res)
{
    render!("landing.dt")(res);
}
void signup(HTTPServerRequest req, HTTPServerResponse res)
{
    render!("signup.dt")(res);
}
void login(HTTPServerRequest req, HTTPServerResponse res)
{

    render!("login.dt")(res);
}
void delete_user(HTTPServerRequest req, HTTPServerResponse res)
{   
    render!("delete_user.dt")(res);
}
void add_file(HTTPServerRequest req, HTTPServerResponse res)
{
    render!("add_file.dt")(res);
}
void addUrl(HTTPServerRequest req, HTTPServerResponse res)
{
    render!("add_url.dt")(res);
}