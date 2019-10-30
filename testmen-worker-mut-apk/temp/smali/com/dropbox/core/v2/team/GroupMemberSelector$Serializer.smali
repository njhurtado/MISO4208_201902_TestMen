.class Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "GroupMemberSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/GroupMemberSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMemberSelector;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupMemberSelector;
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
    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 138
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 139
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 141
    :cond_0
    if-nez v3, :cond_7

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "f_group":Lcom/dropbox/core/v2/team/GroupSelector;
    const/4 v1, 0x0

    .line 144
    .local v1, "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 145
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 147
    const-string v5, "group"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 148
    sget-object v5, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupSelector;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    const-string v5, "user"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    sget-object v5, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 157
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 158
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"group\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_4
    if-nez v1, :cond_5

    .line 161
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"user\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 163
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/team/GroupMemberSelector;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/team/GroupMemberSelector;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 168
    .local v4, "value":Lcom/dropbox/core/v2/team/GroupMemberSelector;
    if-nez p2, :cond_6

    .line 169
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 171
    :cond_6
    return-object v4

    .line 166
    .end local v0    # "f_group":Lcom/dropbox/core/v2/team/GroupSelector;
    .end local v1    # "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    .end local v4    # "value":Lcom/dropbox/core/v2/team/GroupMemberSelector;
    :cond_7
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
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/GroupMemberSelector;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupMemberSelector;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/GroupMemberSelector;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 121
    if-nez p3, :cond_0

    .line 122
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 124
    :cond_0
    const-string v0, "group"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMemberSelector;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 126
    const-string v0, "user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/GroupMemberSelector;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

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
    .line 116
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMemberSelector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupMemberSelector;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
