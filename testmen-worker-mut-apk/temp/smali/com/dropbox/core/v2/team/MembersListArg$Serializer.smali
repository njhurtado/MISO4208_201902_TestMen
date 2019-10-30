.class Lcom/dropbox/core/v2/team/MembersListArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MembersListArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MembersListArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersListArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersListArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MembersListArg;
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
    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 228
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 229
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 231
    :cond_0
    if-nez v3, :cond_5

    .line 232
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 233
    .local v1, "f_limit":Ljava/lang/Long;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 234
    .local v0, "f_includeRemoved":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 237
    const-string v5, "limit"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 238
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_limit":Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .restart local v1    # "f_limit":Ljava/lang/Long;
    goto :goto_0

    .line 240
    :cond_1
    const-string v5, "include_removed"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 241
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_includeRemoved":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .restart local v0    # "f_includeRemoved":Ljava/lang/Boolean;
    goto :goto_0

    .line 244
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 247
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/dropbox/core/v2/team/MembersListArg;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v4, v6, v7, v5}, Lcom/dropbox/core/v2/team/MembersListArg;-><init>(JZ)V

    .line 252
    .local v4, "value":Lcom/dropbox/core/v2/team/MembersListArg;
    if-nez p2, :cond_4

    .line 253
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 255
    :cond_4
    return-object v4

    .line 250
    .end local v0    # "f_includeRemoved":Ljava/lang/Boolean;
    .end local v1    # "f_limit":Ljava/lang/Long;
    .end local v4    # "value":Lcom/dropbox/core/v2/team/MembersListArg;
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
    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MembersListArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersListArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MembersListArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 211
    if-nez p3, :cond_0

    .line 212
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 214
    :cond_0
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/team/MembersListArg;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 216
    const-string v0, "include_removed"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/MembersListArg;->includeRemoved:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 218
    if-nez p3, :cond_1

    .line 219
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 221
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
    .line 206
    check-cast p1, Lcom/dropbox/core/v2/team/MembersListArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersListArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
