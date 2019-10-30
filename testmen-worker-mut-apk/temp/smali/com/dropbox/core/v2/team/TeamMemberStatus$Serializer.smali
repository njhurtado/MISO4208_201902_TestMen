.class Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamMemberStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamMemberStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamMemberStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

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
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 279
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 287
    :goto_0
    if-nez v2, :cond_1

    .line 288
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 283
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 284
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 285
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 290
    :cond_1
    const-string v4, "active"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 291
    sget-object v3, Lcom/dropbox/core/v2/team/TeamMemberStatus;->ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 307
    .local v3, "value":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    :goto_1
    if-nez v0, :cond_2

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 309
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 311
    :cond_2
    return-object v3

    .line 293
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    :cond_3
    const-string v4, "invited"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 294
    sget-object v3, Lcom/dropbox/core/v2/team/TeamMemberStatus;->INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    goto :goto_1

    .line 296
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    :cond_4
    const-string v4, "suspended"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 297
    sget-object v3, Lcom/dropbox/core/v2/team/TeamMemberStatus;->SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    goto :goto_1

    .line 299
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    :cond_5
    const-string v4, "removed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/RemovedStatus;
    sget-object v4, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/RemovedStatus;

    move-result-object v1

    .line 302
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removed(Lcom/dropbox/core/v2/team/RemovedStatus;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v3

    .line 303
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    goto :goto_1

    .line 305
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/RemovedStatus;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamMemberStatus;
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
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 246
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$1;->$SwitchMap$com$dropbox$core$v2$team$TeamMemberStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->tag()Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->tag()Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :pswitch_0
    const-string v0, "active"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 252
    :pswitch_1
    const-string v0, "invited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :pswitch_2
    const-string v0, "suspended"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :pswitch_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 261
    const-string v0, "removed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 262
    sget-object v0, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->access$000(Lcom/dropbox/core/v2/team/TeamMemberStatus;)Lcom/dropbox/core/v2/team/RemovedStatus;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/RemovedStatus;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 263
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
