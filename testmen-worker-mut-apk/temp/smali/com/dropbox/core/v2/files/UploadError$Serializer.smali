.class Lcom/dropbox/core/v2/files/UploadError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/dropbox/core/v2/files/UploadError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 232
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 240
    :goto_0
    if-nez v2, :cond_1

    .line 241
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 237
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 238
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 243
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/UploadWriteFailed;
    sget-object v4, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v1

    .line 246
    invoke-static {v1}, Lcom/dropbox/core/v2/files/UploadError;->path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadError;

    move-result-object v3

    .line 251
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/UploadWriteFailed;
    .local v3, "value":Lcom/dropbox/core/v2/files/UploadError;
    :goto_1
    if-nez v0, :cond_2

    .line 252
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 253
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 255
    :cond_2
    return-object v3

    .line 249
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadError;
    :cond_3
    sget-object v3, Lcom/dropbox/core/v2/files/UploadError;->OTHER:Lcom/dropbox/core/v2/files/UploadError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UploadError;
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
    .line 206
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/UploadError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Lcom/dropbox/core/v2/files/UploadError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadError;->tag()Lcom/dropbox/core/v2/files/UploadError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 213
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 214
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 215
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadError;->access$000(Lcom/dropbox/core/v2/files/UploadError;)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadWriteFailed;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 216
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 206
    check-cast p1, Lcom/dropbox/core/v2/files/UploadError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
