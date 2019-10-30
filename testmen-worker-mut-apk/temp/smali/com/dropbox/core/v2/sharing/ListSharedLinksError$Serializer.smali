.class Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListSharedLinksError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListSharedLinksError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 255
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 263
    :goto_0
    if-nez v2, :cond_1

    .line 264
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 259
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 260
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 261
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 266
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 269
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 270
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    move-result-object v3

    .line 278
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    :goto_1
    if-nez v0, :cond_2

    .line 279
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 280
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 282
    :cond_2
    return-object v3

    .line 272
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    :cond_3
    const-string v4, "reset"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 273
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->RESET:Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    goto :goto_1

    .line 276
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->OTHER:Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
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
    .line 224
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListSharedLinksError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ListSharedLinksError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 229
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListSharedLinksError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->tag()Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 243
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 232
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 233
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 234
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;->access$000(Lcom/dropbox/core/v2/sharing/ListSharedLinksError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 235
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 239
    :pswitch_1
    const-string v0, "reset"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 229
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
    .line 224
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListSharedLinksError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
