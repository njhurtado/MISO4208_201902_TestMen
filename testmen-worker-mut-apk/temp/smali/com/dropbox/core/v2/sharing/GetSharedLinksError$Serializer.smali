.class Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GetSharedLinksError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/GetSharedLinksError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 231
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 239
    :goto_0
    if-nez v2, :cond_1

    .line 240
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 235
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 236
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 237
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 242
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "fieldValue":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_2

    .line 245
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 246
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 248
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_4

    .line 249
    invoke-static {}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->path()Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    move-result-object v3

    .line 258
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    :goto_1
    if-nez v0, :cond_3

    .line 259
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 260
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 262
    :cond_3
    return-object v3

    .line 252
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    .restart local v1    # "fieldValue":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->path(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    move-result-object v3

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    goto :goto_1

    .line 256
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    :cond_5
    sget-object v3, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->OTHER:Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
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
    .line 204
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/GetSharedLinksError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/GetSharedLinksError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 209
    sget-object v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$1;->$SwitchMap$com$dropbox$core$v2$sharing$GetSharedLinksError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->tag()Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 212
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 213
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;->access$000(Lcom/dropbox/core/v2/sharing/GetSharedLinksError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 215
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 209
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
    .line 204
    check-cast p1, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/GetSharedLinksError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
