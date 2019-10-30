.class public Lcom/uservoice/uservoicesdk/rest/OkOAuthConsumer;
.super Loauth/signpost/AbstractOAuthConsumer;
.source "OkOAuthConsumer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Loauth/signpost/AbstractOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected wrap(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;
    .locals 1
    .param p1, "request"    # Ljava/lang/Object;

    .prologue
    .line 16
    new-instance v0, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;

    check-cast p1, Lcom/squareup/okhttp/Request;

    .end local p1    # "request":Ljava/lang/Object;
    invoke-direct {v0, p1}, Lcom/uservoice/uservoicesdk/rest/OkRequestAdapter;-><init>(Lcom/squareup/okhttp/Request;)V

    return-object v0
.end method
