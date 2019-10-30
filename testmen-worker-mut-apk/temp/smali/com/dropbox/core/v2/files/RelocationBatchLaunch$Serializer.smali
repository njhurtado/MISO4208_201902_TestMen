.class Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelocationBatchLaunch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 311
    const/4 v0, 0x1

    .line 312
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 320
    :goto_0
    if-nez v2, :cond_1

    .line 321
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 316
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 317
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 318
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 323
    :cond_1
    const-string v4, "async_job_id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "async_job_id"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 326
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 327
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v3

    .line 337
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :goto_1
    if-nez v0, :cond_2

    .line 338
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 339
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 341
    :cond_2
    return-object v3

    .line 329
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :cond_3
    const-string v4, "complete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 330
    const/4 v1, 0x0

    .line 331
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/RelocationBatchResult;
    sget-object v4, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/RelocationBatchResult;

    move-result-object v1

    .line 332
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->complete(Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v3

    .line 333
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    goto :goto_1

    .line 335
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/RelocationBatchResult;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 283
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchLaunch$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->tag()Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 300
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 303
    :goto_0
    return-void

    .line 285
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 286
    const-string v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 287
    const-string v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->access$000(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 289
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 293
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 294
    const-string v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 295
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->access$100(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Lcom/dropbox/core/v2/files/RelocationBatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 296
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 278
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
