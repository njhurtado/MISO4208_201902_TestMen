.class public Lorg/apache/jackrabbit/webdav/property/ResourceType;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "ResourceType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/property/ResourceType$1;,
        Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/Set",
        "<",
        "Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ACTIVITY:I = 0x3

.field public static final BASELINE:I = 0x4

.field public static final COLLECTION:I = 0x1

.field public static final DEFAULT_RESOURCE:I = 0x0

.field private static final NAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_HISTORY:I = 0x2


# instance fields
.field private final resourceTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    .line 75
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    new-instance v1, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;

    const-string v2, "collection"

    sget-object v3, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Lorg/apache/jackrabbit/webdav/property/ResourceType$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    new-instance v1, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;

    const-string v2, "version-history"

    sget-object v3, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Lorg/apache/jackrabbit/webdav/property/ResourceType$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    new-instance v1, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;

    const-string v2, "activity"

    sget-object v3, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Lorg/apache/jackrabbit/webdav/property/ResourceType$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    new-instance v1, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;

    const-string v2, "baseline"

    sget-object v3, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Lorg/apache/jackrabbit/webdav/property/ResourceType$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "resourceType"    # I

    .prologue
    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/jackrabbit/webdav/property/ResourceType;-><init>([I)V

    .line 89
    return-void
.end method

.method public constructor <init>([I)V
    .locals 7
    .param p1, "resourceTypes"    # [I

    .prologue
    .line 95
    sget-object v4, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->RESOURCETYPE:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 96
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 97
    .local v3, "resourceType":I
    invoke-static {v3}, Lorg/apache/jackrabbit/webdav/property/ResourceType;->isValidResourceType(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid resource type \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "resourceType":I
    :cond_1
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->resourceTypes:[I

    .line 102
    return-void
.end method

.method private static isValidResourceType(I)Z
    .locals 1
    .param p0, "resourceType"    # I

    .prologue
    .line 138
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p0, v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registerResourceType(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 156
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot register a <null> resourcetype"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_1
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Lorg/apache/jackrabbit/webdav/property/ResourceType$1;)V

    .line 160
    .local v0, "tn":Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 165
    :goto_0
    return v1

    .line 164
    :cond_2
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    sget-object v1, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 167
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not register resourcetype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getResourceTypes()[I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->resourceTypes:[I

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/ResourceType;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 113
    .local v4, "rTypes":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;>;"
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType;->resourceTypes:[I

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v5, v0, v1

    .line 114
    .local v5, "resourceType":I
    sget-object v6, Lorg/apache/jackrabbit/webdav/property/ResourceType;->NAMES:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;

    .line 115
    .local v3, "n":Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;
    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v3    # "n":Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;
    .end local v5    # "resourceType":I
    :cond_1
    return-object v4
.end method
