.class Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "TeamMemberInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamMemberInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamMemberInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamMemberInfo;
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
    .line 132
    const/4 v3, 0x0

    .line 133
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 134
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 135
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 137
    :cond_0
    if-nez v3, :cond_7

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "f_profile":Lcom/dropbox/core/v2/team/TeamMemberProfile;
    const/4 v1, 0x0

    .line 140
    .local v1, "f_role":Lcom/dropbox/core/v2/team/AdminTier;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 143
    const-string v5, "profile"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    sget-object v5, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_profile":Lcom/dropbox/core/v2/team/TeamMemberProfile;
    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    .restart local v0    # "f_profile":Lcom/dropbox/core/v2/team/TeamMemberProfile;
    goto :goto_0

    .line 146
    :cond_1
    const-string v5, "role"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    sget-object v5, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/AdminTier$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/AdminTier;

    move-result-object v1

    goto :goto_0

    .line 150
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 153
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 154
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"profile\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 156
    :cond_4
    if-nez v1, :cond_5

    .line 157
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"role\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 159
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/team/TeamMemberInfo;-><init>(Lcom/dropbox/core/v2/team/TeamMemberProfile;Lcom/dropbox/core/v2/team/AdminTier;)V

    .line 164
    .local v4, "value":Lcom/dropbox/core/v2/team/TeamMemberInfo;
    if-nez p2, :cond_6

    .line 165
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 167
    :cond_6
    return-object v4

    .line 162
    .end local v0    # "f_profile":Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .end local v1    # "f_role":Lcom/dropbox/core/v2/team/AdminTier;
    .end local v4    # "value":Lcom/dropbox/core/v2/team/TeamMemberInfo;
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
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamMemberInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p3, :cond_0

    .line 118
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 120
    :cond_0
    const-string v0, "profile"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;->profile:Lcom/dropbox/core/v2/team/TeamMemberProfile;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 122
    const-string v0, "role"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/AdminTier$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;->role:Lcom/dropbox/core/v2/team/AdminTier;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/AdminTier$Serializer;->serialize(Lcom/dropbox/core/v2/team/AdminTier;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 124
    if-nez p3, :cond_1

    .line 125
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 127
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
    .line 112
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMemberInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
