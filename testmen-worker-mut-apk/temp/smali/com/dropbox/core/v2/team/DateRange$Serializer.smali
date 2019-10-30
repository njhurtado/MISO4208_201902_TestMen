.class Lcom/dropbox/core/v2/team/DateRange$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "DateRange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/DateRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/DateRange;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/DateRange$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/DateRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRange$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DateRange;
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
    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 199
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DateRange$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 200
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DateRange$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 202
    :cond_0
    if-nez v3, :cond_5

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "f_startDate":Ljava/util/Date;
    const/4 v0, 0x0

    .line 205
    .local v0, "f_endDate":Ljava/util/Date;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 206
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 208
    const-string v5, "start_date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_startDate":Ljava/util/Date;
    check-cast v1, Ljava/util/Date;

    .restart local v1    # "f_startDate":Ljava/util/Date;
    goto :goto_0

    .line 211
    :cond_1
    const-string v5, "end_date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_endDate":Ljava/util/Date;
    check-cast v0, Ljava/util/Date;

    .restart local v0    # "f_endDate":Ljava/util/Date;
    goto :goto_0

    .line 215
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DateRange$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 218
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v4, v1, v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 223
    .local v4, "value":Lcom/dropbox/core/v2/team/DateRange;
    if-nez p2, :cond_4

    .line 224
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DateRange$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 226
    :cond_4
    return-object v4

    .line 221
    .end local v0    # "f_endDate":Ljava/util/Date;
    .end local v1    # "f_startDate":Ljava/util/Date;
    .end local v4    # "value":Lcom/dropbox/core/v2/team/DateRange;
    :cond_5
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
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/DateRange$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/DateRange;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/DateRange;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/DateRange;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 178
    if-nez p3, :cond_0

    .line 179
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 181
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 182
    const-string v0, "start_date"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 183
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DateRange;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 185
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "end_date"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/DateRange;->endDate:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 189
    :cond_2
    if-nez p3, :cond_3

    .line 190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 192
    :cond_3
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
    .line 173
    check-cast p1, Lcom/dropbox/core/v2/team/DateRange;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/DateRange$Serializer;->serialize(Lcom/dropbox/core/v2/team/DateRange;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
