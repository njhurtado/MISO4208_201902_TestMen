.class public final Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/json/JsonReader$FieldMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "expectedIndex"    # I

    .prologue
    .line 430
    iget-object v2, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "already called build(); can\'t call add() anymore"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_0
    iget-object v2, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 432
    .local v1, "i":I
    if-eq p2, v1, :cond_1

    .line 433
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expectedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    .local v0, "displaced":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 437
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "duplicate field name: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    :cond_2
    return-void
.end method

.method public build()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    iget-object v1, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "already called build(); can\'t call build() again"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    .line 445
    .local v0, "f":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iput-object v2, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    .line 446
    new-instance v1, Lcom/dropbox/core/json/JsonReader$FieldMapping;

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping;-><init>(Ljava/util/HashMap;Lcom/dropbox/core/json/JsonReader$1;)V

    return-object v1
.end method
