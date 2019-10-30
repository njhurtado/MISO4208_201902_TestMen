.class Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderArchiveLaunch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 267
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 275
    :goto_0
    if-nez v2, :cond_1

    .line 276
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 271
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 272
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 273
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 278
    :cond_1
    const-string v4, "async_job_id"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "fieldValue":Ljava/lang/String;
    const-string v4, "async_job_id"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 281
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "fieldValue":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 282
    .restart local v1    # "fieldValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;

    move-result-object v3

    .line 292
    .end local v1    # "fieldValue":Ljava/lang/String;
    .local v3, "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    :goto_1
    if-nez v0, :cond_2

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 294
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 296
    :cond_2
    return-object v3

    .line 284
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    :cond_3
    const-string v4, "complete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 285
    const/4 v1, 0x0

    .line 286
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    sget-object v4, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v1

    .line 287
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;->complete(Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;

    move-result-object v3

    .line 288
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    goto :goto_1

    .line 290
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    :cond_4
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
    .line 233
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderArchiveLaunch$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;->tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;->tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 241
    const-string v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 242
    const-string v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;->access$000(Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 244
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 258
    :goto_0
    return-void

    .line 248
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 249
    const-string v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 250
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;->access$100(Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 251
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 238
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
    .line 233
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
