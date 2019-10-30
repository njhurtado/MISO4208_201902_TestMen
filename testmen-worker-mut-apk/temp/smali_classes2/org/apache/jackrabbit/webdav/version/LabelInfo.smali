.class public Lorg/apache/jackrabbit/webdav/version/LabelInfo;
.super Ljava/lang/Object;
.source "LabelInfo.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# static fields
.field public static final TYPE_ADD:I = 0x2

.field public static final TYPE_REMOVE:I = 0x1

.field public static final TYPE_SET:I

.field private static log:Lorg/slf4j/Logger;

.field public static typeNames:[Ljava/lang/String;


# instance fields
.field private final depth:I

.field private final labelName:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-class v0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->log:Lorg/slf4j/Logger;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "set"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "remove"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "add"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->typeNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "labelName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/jackrabbit/webdav/version/LabelInfo;-><init>(Ljava/lang/String;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .param p1, "labelName"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "depth"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Label name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-le p2, v0, :cond_2

    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->labelName:Ljava/lang/String;

    .line 96
    iput p2, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->type:I

    .line 97
    iput p3, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->depth:I

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "labelName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Label name must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 68
    .local v1, "validType":Z
    const/4 v0, 0x0

    .line 69
    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->typeNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 70
    sget-object v2, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->typeNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    const/4 v1, 0x1

    .line 76
    :cond_1
    if-nez v1, :cond_3

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_3
    iput v0, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->type:I

    .line 80
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->labelName:Ljava/lang/String;

    .line 81
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->depth:I

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "labelElement"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/version/LabelInfo;-><init>(Lorg/w3c/dom/Element;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .locals 7
    .param p1, "labelElement"    # Lorg/w3c/dom/Element;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x190

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v4, "label"

    sget-object v5, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->matches(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 115
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->log:Lorg/slf4j/Logger;

    const-string v5, "DAV:label element expected"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 116
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 119
    :cond_0
    const/4 v2, 0x0

    .line 120
    .local v2, "label":Ljava/lang/String;
    const/4 v3, -0x1

    .line 121
    .local v3, "type":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->typeNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 122
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->typeNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    sget-object v5, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->hasChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    move v3, v1

    .line 124
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->typeNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    sget-object v5, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 125
    .local v0, "el":Lorg/w3c/dom/Element;
    const-string v4, "label-name"

    sget-object v5, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .end local v0    # "el":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_2
    if-nez v2, :cond_3

    .line 129
    sget-object v4, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->log:Lorg/slf4j/Logger;

    const-string v5, "DAV:label element must contain at least one set, add or remove element defining a label-name."

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 130
    new-instance v4, Lorg/apache/jackrabbit/webdav/DavException;

    invoke-direct {v4, v6}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v4

    .line 132
    :cond_3
    iput-object v2, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->labelName:Ljava/lang/String;

    .line 133
    iput v3, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->type:I

    .line 134
    iput p2, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->depth:I

    .line 135
    return-void
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->depth:I

    return v0
.end method

.method public getLabelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->labelName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->type:I

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 5
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 182
    const-string v2, "label"

    sget-object v3, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 183
    .local v0, "label":Lorg/w3c/dom/Element;
    sget-object v2, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->typeNames:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->type:I

    aget-object v2, v2, v3

    sget-object v3, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 184
    .local v1, "typeElem":Lorg/w3c/dom/Element;
    const-string v2, "label-name"

    sget-object v3, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/version/LabelInfo;->labelName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 185
    return-object v0
.end method
