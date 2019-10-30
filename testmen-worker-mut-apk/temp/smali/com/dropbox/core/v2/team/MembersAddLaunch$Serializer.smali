.class Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersAddLaunch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersAddLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersAddLaunch;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

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
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 8
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

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 276
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 284
    :goto_0
    if-nez v3, :cond_1

    .line 285
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field missing: .tag"

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 280
    .end local v0    # "collapsed":Z
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 281
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 282
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 287
    :cond_1
    const-string v5, "async_job_id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v5, "async_job_id"

    invoke-static {v5, p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 290
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 291
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v4

    .line 302
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v4, "value":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    :goto_1
    if-nez v0, :cond_2

    .line 303
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 304
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 306
    :cond_2
    return-object v4

    .line 293
    .end local v4    # "value":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    :cond_3
    const-string v5, "complete"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, "fieldValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    const-string v5, "complete"

    invoke-static {v5, p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 296
    sget-object v5, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fieldValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    check-cast v2, Ljava/util/List;

    .line 297
    .restart local v2    # "fieldValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    invoke-static {v2}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->complete(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v4

    .line 298
    .restart local v4    # "value":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    goto :goto_1

    .line 300
    .end local v2    # "fieldValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    .end local v4    # "value":Lcom/dropbox/core/v2/team/MembersAddLaunch;
    :cond_4
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersAddLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$1;->$SwitchMap$com$dropbox$core$v2$team$MembersAddLaunch$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->tag()Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ordinal()I

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

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->tag()Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

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
    const-string v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 250
    const-string v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->access$000(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/lang/String;

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
    const-string v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 258
    const-string v0, "complete"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->access$100(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

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
    check-cast p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersAddLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
