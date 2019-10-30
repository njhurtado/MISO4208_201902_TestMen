.class Lcom/dropbox/core/v2/files/DeleteError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "DeleteError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/DeleteError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/DeleteError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 287
    const/4 v0, 0x1

    .line 288
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 296
    :goto_0
    if-nez v2, :cond_1

    .line 297
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 292
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 293
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 294
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 299
    :cond_1
    const-string v4, "path_lookup"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path_lookup"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 302
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 303
    invoke-static {v1}, Lcom/dropbox/core/v2/files/DeleteError;->pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v3

    .line 314
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/files/DeleteError;
    :goto_1
    if-nez v0, :cond_2

    .line 315
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 316
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 318
    :cond_2
    return-object v3

    .line 305
    .end local v3    # "value":Lcom/dropbox/core/v2/files/DeleteError;
    :cond_3
    const-string v4, "path_write"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    const-string v4, "path_write"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 308
    sget-object v4, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 309
    invoke-static {v1}, Lcom/dropbox/core/v2/files/DeleteError;->pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v3

    .line 310
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/DeleteError;
    goto :goto_1

    .line 312
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/DeleteError;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/files/DeleteError;->OTHER:Lcom/dropbox/core/v2/files/DeleteError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/DeleteError;
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
    .line 253
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/DeleteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/DeleteError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/DeleteError;->tag()Lcom/dropbox/core/v2/files/DeleteError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 279
    :goto_0
    return-void

    .line 260
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 261
    const-string v0, "path_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 262
    const-string v0, "path_lookup"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError;->access$000(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 264
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 268
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 269
    const-string v0, "path_write"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 270
    const-string v0, "path_write"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError;->access$100(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 272
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 258
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
    .line 253
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
