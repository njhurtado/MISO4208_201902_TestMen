.class Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "CreateSharedLinkError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 228
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 236
    :goto_0
    if-nez v2, :cond_1

    .line 237
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 232
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 233
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 234
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 239
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 242
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    move-result-object v3

    .line 248
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    :goto_1
    if-nez v0, :cond_2

    .line 249
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 250
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 252
    :cond_2
    return-object v3

    .line 246
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    :cond_3
    sget-object v3, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->OTHER:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
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
    .line 201
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 206
    sget-object v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$1;->$SwitchMap$com$dropbox$core$v2$sharing$CreateSharedLinkError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->tag()Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 216
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 208
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 209
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 210
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;->access$000(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 212
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 206
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
    .line 201
    check-cast p1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
