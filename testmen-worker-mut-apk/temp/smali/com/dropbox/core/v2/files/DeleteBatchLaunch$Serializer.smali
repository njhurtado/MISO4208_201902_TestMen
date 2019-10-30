.class Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "DeleteBatchLaunch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/DeleteBatchLaunch;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 319
    :goto_0
    if-nez v2, :cond_1

    .line 320
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 315
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 316
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 317
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 322
    :cond_1
    const-string v4, "async_job_id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "async_job_id"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 325
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 326
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v3

    .line 336
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    :goto_1
    if-nez v0, :cond_2

    .line 337
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 338
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 340
    :cond_2
    return-object v3

    .line 328
    .end local v3    # "value":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    :cond_3
    const-string v4, "complete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/DeleteBatchResult;
    sget-object v4, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/DeleteBatchResult;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->complete(Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v3

    .line 332
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    goto :goto_1

    .line 334
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
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
    .line 277
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchLaunch$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->tag()Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 284
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 285
    const-string v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 286
    const-string v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->access$000(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 288
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 293
    const-string v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 294
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->access$100(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;)Lcom/dropbox/core/v2/files/DeleteBatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 295
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 282
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
    .line 277
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
