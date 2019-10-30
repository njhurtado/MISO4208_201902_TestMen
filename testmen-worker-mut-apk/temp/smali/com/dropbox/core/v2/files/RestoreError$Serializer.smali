.class Lcom/dropbox/core/v2/files/RestoreError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RestoreError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RestoreError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RestoreError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RestoreError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RestoreError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RestoreError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 324
    const/4 v0, 0x1

    .line 325
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 333
    :goto_0
    if-nez v2, :cond_1

    .line 334
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 329
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 330
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 331
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 336
    :cond_1
    const-string v4, "path_lookup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path_lookup"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 339
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 340
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RestoreError;->pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v3

    .line 354
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/files/RestoreError;
    :goto_1
    if-nez v0, :cond_2

    .line 355
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 356
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 358
    :cond_2
    return-object v3

    .line 342
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RestoreError;
    :cond_3
    const-string v4, "path_write"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    const-string v4, "path_write"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 345
    sget-object v4, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 346
    invoke-static {v1}, Lcom/dropbox/core/v2/files/RestoreError;->pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v3

    .line 347
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RestoreError;
    goto :goto_1

    .line 348
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RestoreError;
    :cond_4
    const-string v4, "invalid_revision"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 349
    sget-object v3, Lcom/dropbox/core/v2/files/RestoreError;->INVALID_REVISION:Lcom/dropbox/core/v2/files/RestoreError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RestoreError;
    goto :goto_1

    .line 352
    .end local v3    # "value":Lcom/dropbox/core/v2/files/RestoreError;
    :cond_5
    sget-object v3, Lcom/dropbox/core/v2/files/RestoreError;->OTHER:Lcom/dropbox/core/v2/files/RestoreError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/RestoreError;
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
    .line 286
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RestoreError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/RestoreError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lcom/dropbox/core/v2/files/RestoreError$1;->$SwitchMap$com$dropbox$core$v2$files$RestoreError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RestoreError;->tag()Lcom/dropbox/core/v2/files/RestoreError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RestoreError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 313
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 293
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 294
    const-string v0, "path_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 295
    const-string v0, "path_lookup"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError;->access$000(Lcom/dropbox/core/v2/files/RestoreError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 297
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 301
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 302
    const-string v0, "path_write"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 303
    const-string v0, "path_write"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError;->access$100(Lcom/dropbox/core/v2/files/RestoreError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 305
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 309
    :pswitch_2
    const-string v0, "invalid_revision"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 286
    check-cast p1, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->serialize(Lcom/dropbox/core/v2/files/RestoreError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
