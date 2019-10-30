.class Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersAddJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersAddJobStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersAddJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_0

    .line 310
    const/4 v0, 0x1

    .line 311
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 319
    :goto_0
    if-nez v3, :cond_1

    .line 320
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field missing: .tag"

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 315
    .end local v0    # "collapsed":Z
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 316
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 317
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 322
    :cond_1
    const-string v5, "in_progress"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    sget-object v4, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    .line 340
    .local v4, "value":Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    :goto_1
    if-nez v0, :cond_2

    .line 341
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 342
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 344
    :cond_2
    return-object v4

    .line 325
    .end local v4    # "value":Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    :cond_3
    const-string v5, "complete"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 326
    const/4 v2, 0x0

    .line 327
    .local v2, "fieldValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    const-string v5, "complete"

    invoke-static {v5, p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 328
    sget-object v5, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fieldValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    check-cast v2, Ljava/util/List;

    .line 329
    .restart local v2    # "fieldValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    invoke-static {v2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->complete(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    move-result-object v4

    .line 330
    .restart local v4    # "value":Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    goto :goto_1

    .line 331
    .end local v2    # "fieldValue":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddResult;>;"
    .end local v4    # "value":Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    :cond_4
    const-string v5, "failed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 332
    const/4 v1, 0x0

    .line 333
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v5, "failed"

    invoke-static {v5, p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 334
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 335
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->failed(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    move-result-object v4

    .line 336
    .restart local v4    # "value":Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    goto :goto_1

    .line 338
    .end local v1    # "fieldValue":Ljava/lang/String;
    .end local v4    # "value":Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    :cond_5
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
    .line 272
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersAddJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus$1;->$SwitchMap$com$dropbox$core$v2$team$MembersAddJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->tag()Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->tag()Lcom/dropbox/core/v2/team/MembersAddJobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :pswitch_0
    const-string v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 302
    :goto_0
    return-void

    .line 283
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 284
    const-string v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 285
    const-string v0, "complete"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->access$000(Lcom/dropbox/core/v2/team/MembersAddJobStatus;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 287
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 291
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 292
    const-string v0, "failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 293
    const-string v0, "failed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 294
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddJobStatus;->access$100(Lcom/dropbox/core/v2/team/MembersAddJobStatus;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 295
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 272
    check-cast p1, Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersAddJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
