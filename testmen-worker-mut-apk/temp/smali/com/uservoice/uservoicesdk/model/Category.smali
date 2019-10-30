.class public Lcom/uservoice/uservoicesdk/model/Category;
.super Lcom/uservoice/uservoicesdk/model/BaseModel;
.source "Category.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/uservoice/uservoicesdk/model/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public load(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/uservoice/uservoicesdk/model/BaseModel;->load(Lorg/json/JSONObject;)V

    .line 12
    const-string v0, "name"

    invoke-virtual {p0, p1, v0}, Lcom/uservoice/uservoicesdk/model/Category;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/model/Category;->name:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/uservoice/uservoicesdk/model/Category;->name:Ljava/lang/String;

    return-object v0
.end method
