.class Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "JobStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/JobStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/JobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_0

    .line 246
    const/4 v0, 0x1

    .line 247
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 255
    :goto_0
    if-nez v2, :cond_1

    .line 256
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field missing: .tag"

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 251
    .end local v0    # "collapsed":Z
    .end local v2    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 252
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 253
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 258
    :cond_1
    const-string v4, "in_progress"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 259
    sget-object v3, Lcom/dropbox/core/v2/sharing/JobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/JobStatus;

    .line 273
    .local v3, "value":Lcom/dropbox/core/v2/sharing/JobStatus;
    :goto_1
    if-nez v0, :cond_2

    .line 274
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 275
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 277
    :cond_2
    return-object v3

    .line 261
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/JobStatus;
    :cond_3
    const-string v4, "complete"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 262
    sget-object v3, Lcom/dropbox/core/v2/sharing/JobStatus;->COMPLETE:Lcom/dropbox/core/v2/sharing/JobStatus;

    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/JobStatus;
    goto :goto_1

    .line 264
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/JobStatus;
    :cond_4
    const-string v4, "failed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "fieldValue":Lcom/dropbox/core/v2/sharing/JobError;
    const-string v4, "failed"

    invoke-static {v4, p1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 267
    sget-object v4, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lcom/dropbox/core/v2/sharing/JobStatus;->failed(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v3

    .line 269
    .restart local v3    # "value":Lcom/dropbox/core/v2/sharing/JobStatus;
    goto :goto_1

    .line 271
    .end local v1    # "fieldValue":Lcom/dropbox/core/v2/sharing/JobError;
    .end local v3    # "value":Lcom/dropbox/core/v2/sharing/JobStatus;
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
    .line 212
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/JobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/JobStatus;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobStatus$1;->$SwitchMap$com$dropbox$core$v2$sharing$JobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/JobStatus;->tag()Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/JobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/JobStatus;->tag()Lcom/dropbox/core/v2/sharing/JobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :pswitch_0
    const-string v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 223
    :pswitch_1
    const-string v0, "complete"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 228
    const-string v0, "failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 229
    const-string v0, "failed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobStatus;->access$000(Lcom/dropbox/core/v2/sharing/JobStatus;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/JobError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 231
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 217
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
    .line 212
    check-cast p1, Lcom/dropbox/core/v2/sharing/JobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/JobStatus;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
