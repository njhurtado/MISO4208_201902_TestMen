.class Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GetCopyReferenceError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/GetCopyReferenceError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/GetCopyReferenceError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/GetCopyReferenceError;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 227
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 235
    :goto_0
    if-nez v2, :cond_1

    .line 236
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 231
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 232
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 233
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 238
    :cond_1
    const-string v4, "path"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    const-string v4, "path"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 241
    sget-object v4, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    .line 242
    invoke-static {v1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/GetCopyReferenceError;

    move-result-object v3

    .line 247
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/LookupError;
    .local v3, "value":Lcom/dropbox/core/v2/files/GetCopyReferenceError;
    :goto_1
    if-nez v0, :cond_2

    .line 248
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 249
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 251
    :cond_2
    return-object v3

    .line 245
    .end local v3    # "value":Lcom/dropbox/core/v2/files/GetCopyReferenceError;
    :cond_3
    sget-object v3, Lcom/dropbox/core/v2/files/GetCopyReferenceError;->OTHER:Lcom/dropbox/core/v2/files/GetCopyReferenceError;

    .restart local v3    # "value":Lcom/dropbox/core/v2/files/GetCopyReferenceError;
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
    .line 200
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/GetCopyReferenceError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/GetCopyReferenceError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/files/GetCopyReferenceError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 205
    sget-object v0, Lcom/dropbox/core/v2/files/GetCopyReferenceError$1;->$SwitchMap$com$dropbox$core$v2$files$GetCopyReferenceError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError;->tag()Lcom/dropbox/core/v2/files/GetCopyReferenceError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 207
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 208
    const-string v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 209
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceError;->access$000(Lcom/dropbox/core/v2/files/GetCopyReferenceError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 211
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 205
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
    .line 200
    check-cast p1, Lcom/dropbox/core/v2/files/GetCopyReferenceError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->serialize(Lcom/dropbox/core/v2/files/GetCopyReferenceError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
