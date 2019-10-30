.class Lcom/dropbox/core/v2/team/MemberAccess$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MemberAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MemberAccess;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MemberAccess$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAccess$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MemberAccess;
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
    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 133
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 134
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_0
    if-nez v3, :cond_7

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    const/4 v0, 0x0

    .line 139
    .local v0, "f_accessType":Lcom/dropbox/core/v2/team/GroupAccessType;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 140
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 142
    const-string v5, "user"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 143
    sget-object v5, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_1
    const-string v5, "access_type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    sget-object v5, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/GroupAccessType;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 152
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    if-nez v1, :cond_4

    .line 153
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"user\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 155
    :cond_4
    if-nez v0, :cond_5

    .line 156
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v6, "Required field \"access_type\" missing."

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 158
    :cond_5
    new-instance v4, Lcom/dropbox/core/v2/team/MemberAccess;

    invoke-direct {v4, v1, v0}, Lcom/dropbox/core/v2/team/MemberAccess;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;)V

    .line 163
    .local v4, "value":Lcom/dropbox/core/v2/team/MemberAccess;
    if-nez p2, :cond_6

    .line 164
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 166
    :cond_6
    return-object v4

    .line 161
    .end local v0    # "f_accessType":Lcom/dropbox/core/v2/team/GroupAccessType;
    .end local v1    # "f_user":Lcom/dropbox/core/v2/team/UserSelectorArg;
    .end local v4    # "value":Lcom/dropbox/core/v2/team/MemberAccess;
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
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MemberAccess;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MemberAccess;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MemberAccess;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 116
    if-nez p3, :cond_0

    .line 117
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 119
    :cond_0
    const-string v0, "user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberAccess;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 121
    const-string v0, "access_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberAccess;->accessType:Lcom/dropbox/core/v2/team/GroupAccessType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/GroupAccessType$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupAccessType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 123
    if-nez p3, :cond_1

    .line 124
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 126
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
    .line 111
    check-cast p1, Lcom/dropbox/core/v2/team/MemberAccess;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/MemberAccess$Serializer;->serialize(Lcom/dropbox/core/v2/team/MemberAccess;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
