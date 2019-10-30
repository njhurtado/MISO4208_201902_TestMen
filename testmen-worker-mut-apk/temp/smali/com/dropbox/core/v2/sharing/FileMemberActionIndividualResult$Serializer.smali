.class Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "FileMemberActionIndividualResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 276
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 284
    :goto_0
    if-nez v2, :cond_1

    .line 285
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 280
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 281
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 282
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 287
    :cond_1
    const-string v4, "success"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/AccessLevel;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_2

    .line 290
    const-string v4, "success"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 291
    sget-object v4, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/AccessLevel;
    check-cast v1, Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 293
    .restart local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/AccessLevel;
    :cond_2
    if-nez v1, :cond_4

    .line 294
    invoke-static {}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v3

    .line 309
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/AccessLevel;
    .local v3, "value":Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    :goto_1
    if-nez v0, :cond_3

    .line 310
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 313
    :cond_3
    return-object v3

    .line 297
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .restart local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/AccessLevel;
    :cond_4
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->success(Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v3

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    goto :goto_1

    .line 300
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/AccessLevel;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    :cond_5
    const-string v4, "member_error"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    const-string v4, "member_error"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 303
    sget-object v4, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v1

    .line 304
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->memberError(Lcom/dropbox/core/v2/sharing/FileMemberActionError;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v3

    .line 305
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    goto :goto_1

    .line 307
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/FileMemberActionError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    :cond_6
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
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
    .line 241
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$1;->$SwitchMap$com$dropbox$core$v2$sharing$FileMemberActionIndividualResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->tag()Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 249
    const-string v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 250
    const-string v0, "success"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 251
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->access$000(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 252
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 267
    :goto_0
    return-void

    .line 256
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 257
    const-string v0, "member_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 258
    const-string v0, "member_error"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;->access$100(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;)Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 260
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 246
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
    .line 241
    check-cast p1, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
