.class Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "UpdateFileMemberArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;
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
    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 141
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 142
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 144
    :cond_0
    if-nez v4, :cond_9

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, "f_file":Ljava/lang/String;
    const/4 v2, 0x0

    .line 147
    .local v2, "f_member":Lcom/dropbox/core/v2/sharing/MemberSelector;
    const/4 v0, 0x0

    .line 148
    .local v0, "f_accessLevel":Lcom/dropbox/core/v2/sharing/AccessLevel;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 149
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 151
    const-string v6, "file"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_file":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_file":Ljava/lang/String;
    goto :goto_0

    .line 154
    :cond_1
    const-string v6, "member"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    sget-object v6, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/MemberSelector;

    move-result-object v2

    goto :goto_0

    .line 157
    :cond_2
    const-string v6, "access_level"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 158
    sget-object v6, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 164
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 165
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"file\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 167
    :cond_5
    if-nez v2, :cond_6

    .line 168
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"member\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 170
    :cond_6
    if-nez v0, :cond_7

    .line 171
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"access_level\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 173
    :cond_7
    new-instance v5, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;

    invoke-direct {v5, v1, v2, v0}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 178
    .local v5, "value":Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;
    if-nez p2, :cond_8

    .line 179
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 181
    :cond_8
    return-object v5

    .line 176
    .end local v0    # "f_accessLevel":Lcom/dropbox/core/v2/sharing/AccessLevel;
    .end local v1    # "f_file":Ljava/lang/String;
    .end local v2    # "f_member":Lcom/dropbox/core/v2/sharing/MemberSelector;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;
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
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p3, :cond_0

    .line 123
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 125
    :cond_0
    const-string v0, "file"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->file:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 127
    const-string v0, "member"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/MemberSelector$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 129
    const-string v0, "access_level"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 131
    if-nez p3, :cond_1

    .line 132
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 134
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
    .line 117
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
