.class Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupsMembersListResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupsMembersListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupsMembersListResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v4, 0x0

    .line 159
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 160
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 161
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 163
    :cond_0
    if-nez v4, :cond_9

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "f_members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/GroupMemberInfo;>;"
    const/4 v0, 0x0

    .line 166
    .local v0, "f_cursor":Ljava/lang/String;
    const/4 v1, 0x0

    .line 167
    .local v1, "f_hasMore":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 168
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 170
    const-string v6, "members"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    sget-object v6, Lcom/dropbox/core/v2/team/GroupMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberInfo$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/GroupMemberInfo;>;"
    check-cast v2, Ljava/util/List;

    .restart local v2    # "f_members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/GroupMemberInfo;>;"
    goto :goto_0

    .line 173
    :cond_1
    const-string v6, "cursor"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_cursor":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "f_cursor":Ljava/lang/String;
    goto :goto_0

    .line 176
    :cond_2
    const-string v6, "has_more"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 177
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_hasMore":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .restart local v1    # "f_hasMore":Ljava/lang/Boolean;
    goto :goto_0

    .line 180
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 183
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    .line 184
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"members\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 186
    :cond_5
    if-nez v0, :cond_6

    .line 187
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"cursor\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_6
    if-nez v1, :cond_7

    .line 190
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"has_more\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 192
    :cond_7
    new-instance v5, Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v2, v0, v6}, Lcom/dropbox/core/v2/team/GroupsMembersListResult;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    .line 197
    .local v5, "value":Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    if-nez p2, :cond_8

    .line 198
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 200
    :cond_8
    return-object v5

    .line 195
    .end local v0    # "f_cursor":Ljava/lang/String;
    .end local v1    # "f_hasMore":Ljava/lang/Boolean;
    .end local v2    # "f_members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/GroupMemberInfo;>;"
    .end local v5    # "value":Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    :cond_9
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
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
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupsMembersListResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 141
    if-nez p3, :cond_0

    .line 142
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 144
    :cond_0
    const-string v0, "members"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupsMembersListResult;->members:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 146
    const-string v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupsMembersListResult;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 148
    const-string v0, "has_more"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/GroupsMembersListResult;->hasMore:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 150
    if-nez p3, :cond_1

    .line 151
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 153
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
    .line 136
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupsMembersListResult;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
