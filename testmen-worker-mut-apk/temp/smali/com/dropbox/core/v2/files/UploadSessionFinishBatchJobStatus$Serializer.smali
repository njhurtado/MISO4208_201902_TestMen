.class Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadSessionFinishBatchJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 7
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
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

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
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 233
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 238
    :cond_1
    const-string v4, "in_progress"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    sget-object v3, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    .line 249
    .local v3, "value":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    :goto_1
    if-nez v0, :cond_2

    .line 250
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 251
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 253
    :cond_2
    return-object v3

    .line 241
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    :cond_3
    const-string v4, "complete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 242
    const/4 v1, 0x0

    .line 243
    .local v1, "fieldValue":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    sget-object v4, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    move-result-object v1

    .line 244
    invoke-static {v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->complete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v3

    .line 245
    .restart local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    goto :goto_1

    .line 247
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;
    .end local v3    # "value":Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
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
    .line 197
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishBatchJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :pswitch_0
    const-string v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 208
    :pswitch_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 209
    const-string v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 210
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    .line 211
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 202
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
    .line 197
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
