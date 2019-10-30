.class Lcom/dropbox/core/v2/files/WriteError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "WriteError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/WriteError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/WriteError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 379
    const/4 v0, 0x1

    .line 380
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 388
    :goto_0
    if-nez v2, :cond_1

    .line 389
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 384
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 385
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 386
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 391
    :cond_1
    const-string v4, "malformed_path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "fieldValue":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_2

    .line 394
    const-string v4, "malformed_path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 395
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 397
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    .line 398
    invoke-static {}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath()Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v3

    .line 422
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/files/WriteError;
    :goto_1
    if-nez v0, :cond_3

    .line 423
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 424
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 426
    :cond_3
    return-object v3

    .line 401
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v3

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    goto :goto_1

    .line 404
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    :cond_5
    const-string v4, "conflict"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 405
    const/4 v1, 0x0

    .line 406
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/WriteConflictError;
    const-string v4, "conflict"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 407
    sget-object v4, Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteConflictError;

    move-result-object v1

    .line 408
    invoke-static {v1}, Lcom/dropbox/core/v2/files/WriteError;->conflict(Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v3

    .line 409
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    goto :goto_1

    .line 410
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteConflictError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    :cond_6
    const-string v4, "no_write_permission"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 411
    sget-object v3, Lcom/dropbox/core/v2/files/WriteError;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    goto :goto_1

    .line 413
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    :cond_7
    const-string v4, "insufficient_space"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 414
    sget-object v3, Lcom/dropbox/core/v2/files/WriteError;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    goto :goto_1

    .line 416
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    :cond_8
    const-string v4, "disallowed_name"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 417
    sget-object v3, Lcom/dropbox/core/v2/files/WriteError;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    goto :goto_1

    .line 420
    .end local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
    :cond_9
    sget-object v3, Lcom/dropbox/core/v2/files/WriteError;->OTHER:Lcom/dropbox/core/v2/files/WriteError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/WriteError;
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
    .line 333
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/WriteError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$1;->$SwitchMap$com$dropbox$core$v2$files$WriteError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/WriteError;->tag()Lcom/dropbox/core/v2/files/WriteError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/WriteError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 340
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 341
    const-string v0, "malformed_path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 342
    const-string v0, "malformed_path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError;->access$000(Lcom/dropbox/core/v2/files/WriteError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 344
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 349
    const-string v0, "conflict"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 350
    const-string v0, "conflict"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError;->access$100(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/WriteConflictError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteConflictError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 352
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 356
    :pswitch_2
    const-string v0, "no_write_permission"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :pswitch_3
    const-string v0, "insufficient_space"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_4
    const-string v0, "disallowed_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 333
    check-cast p1, Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
