.class Lcom/uservoice/uservoicesdk/model/Suggestion$5;
.super Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;
.source "Suggestion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uservoice/uservoicesdk/model/Suggestion;->unsubscribe(Landroid/content/Context;Lcom/uservoice/uservoicesdk/rest/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uservoice/uservoicesdk/model/Suggestion;

.field final synthetic val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;


# direct methods
.method constructor <init>(Lcom/uservoice/uservoicesdk/model/Suggestion;Lcom/uservoice/uservoicesdk/rest/Callback;Lcom/uservoice/uservoicesdk/rest/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/uservoice/uservoicesdk/model/Suggestion;

    .prologue
    .line 96
    .local p2, "callback":Lcom/uservoice/uservoicesdk/rest/Callback;, "Lcom/uservoice/uservoicesdk/rest/Callback<*>;"
    iput-object p1, p0, Lcom/uservoice/uservoicesdk/model/Suggestion$5;->this$0:Lcom/uservoice/uservoicesdk/model/Suggestion;

    iput-object p3, p0, Lcom/uservoice/uservoicesdk/model/Suggestion$5;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    invoke-direct {p0, p2}, Lcom/uservoice/uservoicesdk/rest/RestTaskCallback;-><init>(Lcom/uservoice/uservoicesdk/rest/Callback;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion$5;->this$0:Lcom/uservoice/uservoicesdk/model/Suggestion;

    const-string v1, "suggestion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/model/Suggestion;->load(Lorg/json/JSONObject;)V

    .line 100
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Suggestion$5;->val$callback:Lcom/uservoice/uservoicesdk/rest/Callback;

    iget-object v1, p0, Lcom/uservoice/uservoicesdk/model/Suggestion$5;->this$0:Lcom/uservoice/uservoicesdk/model/Suggestion;

    invoke-virtual {v0, v1}, Lcom/uservoice/uservoicesdk/rest/Callback;->onModel(Ljava/lang/Object;)V

    .line 101
    return-void
.end method
