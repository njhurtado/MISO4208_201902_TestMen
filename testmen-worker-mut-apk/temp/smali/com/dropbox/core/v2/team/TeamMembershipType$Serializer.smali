.class Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamMembershipType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/TeamMembershipType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamMembershipType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamMembershipType;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 69
    :goto_0
    if-nez v1, :cond_1

    .line 70
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 65
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 66
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 67
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 72
    :cond_1
    const-string v3, "full"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    sget-object v2, Lcom/dropbox/core/v2/team/TeamMembershipType;->FULL:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 81
    .local v2, "value":Lcom/dropbox/core/v2/team/TeamMembershipType;
    :goto_1
    if-nez v0, :cond_2

    .line 82
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 83
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 85
    :cond_2
    return-object v2

    .line 75
    .end local v2    # "value":Lcom/dropbox/core/v2/team/TeamMembershipType;
    :cond_3
    const-string v3, "limited"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 76
    sget-object v2, Lcom/dropbox/core/v2/team/TeamMembershipType;->LIMITED:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .restart local v2    # "value":Lcom/dropbox/core/v2/team/TeamMembershipType;
    goto :goto_1

    .line 79
    .end local v2    # "value":Lcom/dropbox/core/v2/team/TeamMembershipType;
    :cond_4
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/team/TeamMembershipType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamMembershipType;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3
    .param p1, "value"    # Lcom/dropbox/core/v2/team/TeamMembershipType;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMembershipType$1;->$SwitchMap$com$dropbox$core$v2$team$TeamMembershipType:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamMembershipType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :pswitch_0
    const-string v0, "full"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 52
    :goto_0
    return-void

    .line 45
    :pswitch_1
    const-string v0, "limited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 34
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMembershipType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamMembershipType$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamMembershipType;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
