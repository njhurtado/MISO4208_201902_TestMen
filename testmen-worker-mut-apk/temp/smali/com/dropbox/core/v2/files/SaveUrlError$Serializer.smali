.class Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SaveUrlError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/SaveUrlError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SaveUrlError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 301
    const/4 v0, 0x1

    .line 302
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 310
    :goto_0
    if-nez v2, :cond_1

    .line 311
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 306
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 307
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 313
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 316
    sget-object v4, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    .line 317
    invoke-static {v1}, Lcom/dropbox/core/v2/files/SaveUrlError;->path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v3

    .line 331
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/WriteError;
    .local v3, "value":Lcom/dropbox/core/v2/files/SaveUrlError;
    :goto_1
    if-nez v0, :cond_2

    .line 332
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 335
    :cond_2
    return-object v3

    .line 319
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlError;
    :cond_3
    const-string v4, "download_failed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 320
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlError;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlError;
    goto :goto_1

    .line 322
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlError;
    :cond_4
    const-string v4, "invalid_url"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 323
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlError;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlError;
    goto :goto_1

    .line 325
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlError;
    :cond_5
    const-string v4, "not_found"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 326
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlError;
    goto :goto_1

    .line 329
    .end local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlError;
    :cond_6
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlError;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/SaveUrlError;
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
    .line 263
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SaveUrlError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/SaveUrlError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 268
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlError;->tag()Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 290
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 270
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 271
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 272
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError;->access$000(Lcom/dropbox/core/v2/files/SaveUrlError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 274
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 278
    :pswitch_1
    const-string v0, "download_failed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :pswitch_2
    const-string v0, "invalid_url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :pswitch_3
    const-string v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 263
    check-cast p1, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveUrlError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
