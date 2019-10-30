.class public abstract Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
.super Ljava/lang/Object;
.source "RestTaskCallback.java"


# instance fields
.field private final callback:Lcom/uservoice/uservoicesdk/rest/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uservoice/uservoicesdk/rest/Callback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;->callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract onComplete(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V
    .locals 1
    .param p1, "result"    # Lcom/uservoice/uservoicesdk/rest/RestResult;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;->callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-virtual {v0, p1}, Lcom/uservoice/uservoicesdk/rest/Callback;->onError(Lcom/uservoice/uservoicesdk/rest/RestResult;)V

    .line 18
    return-void
.end method
