.class Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "LinkPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/LinkPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkPassword;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/LinkPassword;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 259
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 267
    :goto_0
    if-nez v2, :cond_1

    .line 268
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 263
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 264
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 265
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 270
    :cond_1
    const-string v4, "remove_password"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 271
    sget-object v3, Lcom/dropbox/core/v2/sharing/LinkPassword;->REMOVE_PASSWORD:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .line 282
    .local v3, "value":Lcom/dropbox/core/v2/sharing/LinkPassword;
    :goto_1
    if-nez v0, :cond_2

    .line 283
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 286
    :cond_2
    return-object v3

    .line 273
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/LinkPassword;
    :cond_3
    const-string v4, "set_password"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "set_password"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 276
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 277
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/LinkPassword;->setPassword(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/LinkPassword;

    move-result-object v3

    .line 278
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/LinkPassword;
    goto :goto_1

    .line 280
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/LinkPassword;
    :cond_4
    sget-object v3, Lcom/dropbox/core/v2/sharing/LinkPassword;->OTHER:Lcom/dropbox/core/v2/sharing/LinkPassword;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/LinkPassword;
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
    .line 228
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/LinkPassword;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/LinkPassword;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/LinkPassword;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 233
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkPassword$1;->$SwitchMap$com$dropbox$core$v2$sharing$LinkPassword$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/LinkPassword;->tag()Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/LinkPassword$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 235
    :pswitch_0
    const-string v0, "remove_password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 240
    const-string v0, "set_password"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 241
    const-string v0, "set_password"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPassword;->access$000(Lcom/dropbox/core/v2/sharing/LinkPassword;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 243
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 233
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
    .line 228
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkPassword;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkPassword$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkPassword;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
