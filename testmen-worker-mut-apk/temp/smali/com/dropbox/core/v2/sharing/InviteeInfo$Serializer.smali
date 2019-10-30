.class public Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "InviteeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/InviteeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 247
    const/4 v0, 0x1

    .line 248
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 256
    :goto_0
    if-nez v2, :cond_1

    .line 257
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 252
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 253
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 254
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 259
    :cond_1
    const-string v4, "email"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "email"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 262
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 263
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->email(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v3

    .line 268
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    :goto_1
    if-nez v0, :cond_2

    .line 269
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 270
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 272
    :cond_2
    return-object v3

    .line 266
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/InviteeInfo;
    :cond_3
    sget-object v3, Lcom/dropbox/core/v2/sharing/InviteeInfo;->OTHER:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/InviteeInfo;
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
    .line 221
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/InviteeInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 226
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeInfo$1;->$SwitchMap$com$dropbox$core$v2$sharing$InviteeInfo$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->tag()Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 236
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 229
    const-string v0, "email"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 230
    const-string v0, "email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->access$000(Lcom/dropbox/core/v2/sharing/InviteeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 232
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 226
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
    .line 221
    check-cast p1, Lcom/dropbox/core/v2/sharing/InviteeInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/InviteeInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InviteeInfo;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
