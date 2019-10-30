.class Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListRevisionsArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/ListRevisionsArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ListRevisionsArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ListRevisionsArg;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 156
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 157
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 159
    :cond_0
    if-nez v3, :cond_6

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "f_path":Ljava/lang/String;
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 162
    .local v0, "f_limit":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 165
    const-string v5, "path"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_path":Ljava/lang/String;
    goto :goto_0

    .line 168
    :cond_1
    const-string v5, "limit"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_limit":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .restart local v0    # "f_limit":Ljava/lang/Long;
    goto :goto_0

    .line 172
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 175
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 176
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"path\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 178
    :cond_4
    new-instance v4, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v1, v6, v7}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;J)V

    .line 183
    .local v4, "value":Lcom/dropbox/core/v2/files/ListRevisionsArg;
    if-nez p2, :cond_5

    .line 184
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 186
    :cond_5
    return-object v4

    .line 181
    .end local v0    # "f_limit":Ljava/lang/Long;
    .end local v1    # "f_path":Ljava/lang/String;
    .end local v4    # "value":Lcom/dropbox/core/v2/files/ListRevisionsArg;
    :cond_6
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No subtype found that matches tag: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/files/ListRevisionsArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ListRevisionsArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/files/ListRevisionsArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p3, :cond_0

    .line 140
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 142
    :cond_0
    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 144
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 146
    if-nez p3, :cond_1

    .line 147
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 149
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 134
    check-cast p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/ListRevisionsArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
