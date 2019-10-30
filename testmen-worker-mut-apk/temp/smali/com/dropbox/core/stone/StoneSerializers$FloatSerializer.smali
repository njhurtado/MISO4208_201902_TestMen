.class final Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "StoneSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Float;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 133
    .local v0, "value":Ljava/lang/Float;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 134
    return-object v0
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
    .line 122
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Float;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Float;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V

    .line 128
    return-void
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
    .line 122
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$FloatSerializer;->serialize(Ljava/lang/Float;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
