.class Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupsMembersListArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupsMembersListArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupsMembersListArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupsMembersListArg;
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
    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 150
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 151
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 153
    :cond_0
    if-nez v3, :cond_6

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "f_group":Lcom/dropbox/core/v2/team/GroupSelector;
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 156
    .local v1, "f_limit":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 157
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 159
    const-string v5, "group"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    sget-object v5, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_1
    const-string v5, "limit"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_limit":Ljava/lang/Long;
    check-cast v1, Ljava/lang/Long;

    .restart local v1    # "f_limit":Ljava/lang/Long;
    goto :goto_0

    .line 166
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 169
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 170
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"group\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 172
    :cond_4
    new-instance v4, Lcom/dropbox/core/v2/team/GroupsMembersListArg;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v0, v6, v7}, Lcom/dropbox/core/v2/team/GroupsMembersListArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;J)V

    .line 177
    .local v4, "value":Lcom/dropbox/core/v2/team/GroupsMembersListArg;
    if-nez p2, :cond_5

    .line 178
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 180
    :cond_5
    return-object v4

    .line 175
    .end local v0    # "f_group":Lcom/dropbox/core/v2/team/GroupSelector;
    .end local v1    # "f_limit":Ljava/lang/Long;
    .end local v4    # "value":Lcom/dropbox/core/v2/team/GroupsMembersListArg;
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
    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupsMembersListArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupsMembersListArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 4
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GroupsMembersListArg;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p3, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 136
    :cond_0
    const-string v0, "group"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 138
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/team/GroupsMembersListArg;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 140
    if-nez p3, :cond_1

    .line 141
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 143
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
    .line 128
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsMembersListArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupsMembersListArg;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
