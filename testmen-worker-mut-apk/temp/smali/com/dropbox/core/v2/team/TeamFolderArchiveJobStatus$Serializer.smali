.class Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderArchiveJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 303
    :goto_0
    if-nez v2, :cond_1

    .line 304
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 299
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 300
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 301
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 306
    :cond_1
    const-string v4, "in_progress"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 307
    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    .line 323
    .local v3, "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    :goto_1
    if-nez v0, :cond_2

    .line 324
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 325
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 327
    :cond_2
    return-object v3

    .line 309
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    :cond_3
    const-string v4, "complete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    sget-object v4, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->complete(Lcom/dropbox/core/v2/team/TeamFolderMetadata;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object v3

    .line 313
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    goto :goto_1

    .line 314
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    :cond_4
    const-string v4, "failed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    const-string v4, "failed"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 317
    sget-object v4, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object v1

    .line 318
    invoke-static {v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->failed(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object v3

    .line 319
    .restart local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    goto :goto_1

    .line 321
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/team/TeamFolderArchiveError;
    .end local v3    # "value":Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    :cond_5
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
    .line 257
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 262
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderArchiveJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->tag()Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :pswitch_0
    const-string v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 286
    :goto_0
    return-void

    .line 268
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 269
    const-string v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 270
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->access$000(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderMetadata;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 271
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 275
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 276
    const-string v0, "failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 277
    const-string v0, "failed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;->access$100(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;)Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderArchiveError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 279
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 262
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
    .line 257
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
