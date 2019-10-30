.class Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "InsufficientQuotaAmounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v11, 0x0

    .line 137
    .local v11, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 138
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 139
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v11

    .line 141
    :cond_0
    if-nez v11, :cond_9

    .line 142
    const/4 v8, 0x0

    .line 143
    .local v8, "f_spaceNeeded":Ljava/lang/Long;
    const/4 v9, 0x0

    .line 144
    .local v9, "f_spaceShortage":Ljava/lang/Long;
    const/4 v0, 0x0

    .line 145
    .local v0, "f_spaceLeft":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v3, :cond_4

    .line 146
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 148
    const-string v2, "space_needed"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_spaceNeeded":Ljava/lang/Long;
    check-cast v8, Ljava/lang/Long;

    .restart local v8    # "f_spaceNeeded":Ljava/lang/Long;
    goto :goto_0

    .line 151
    :cond_1
    const-string v2, "space_shortage"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "f_spaceShortage":Ljava/lang/Long;
    check-cast v9, Ljava/lang/Long;

    .restart local v9    # "f_spaceShortage":Ljava/lang/Long;
    goto :goto_0

    .line 154
    :cond_2
    const-string v2, "space_left"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_spaceLeft":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .restart local v0    # "f_spaceLeft":Ljava/lang/Long;
    goto :goto_0

    .line 158
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 161
    .end local v10    # "field":Ljava/lang/String;
    :cond_4
    if-nez v8, :cond_5

    .line 162
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v3, "Required field \"space_needed\" missing."

    invoke-direct {v2, p1, v3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_5
    if-nez v9, :cond_6

    .line 165
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v3, "Required field \"space_shortage\" missing."

    invoke-direct {v2, p1, v3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_6
    if-nez v0, :cond_7

    .line 168
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v3, "Required field \"space_left\" missing."

    invoke-direct {v2, p1, v3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_7
    new-instance v1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;-><init>(JJJ)V

    .line 175
    .local v1, "value":Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    if-nez p2, :cond_8

    .line 176
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 178
    :cond_8
    return-object v1

    .line 173
    .end local v0    # "f_spaceLeft":Ljava/lang/Long;
    .end local v1    # "value":Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .end local v8    # "f_spaceNeeded":Ljava/lang/Long;
    .end local v9    # "f_spaceShortage":Ljava/lang/Long;
    :cond_9
    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No subtype found that matches tag: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v2
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
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p3, :cond_0

    .line 120
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 122
    :cond_0
    const-string v0, "space_needed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceNeeded:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 124
    const-string v0, "space_shortage"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceShortage:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 126
    const-string v0, "space_left"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;->spaceLeft:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 128
    if-nez p3, :cond_1

    .line 129
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 131
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
    .line 114
    check-cast p1, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
