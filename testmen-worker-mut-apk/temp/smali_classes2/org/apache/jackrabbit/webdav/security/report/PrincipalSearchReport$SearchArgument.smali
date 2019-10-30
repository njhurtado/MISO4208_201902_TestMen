.class public Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;
.super Ljava/lang/Object;
.source "PrincipalSearchReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchArgument"
.end annotation


# instance fields
.field private final searchProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

.field private final searchString:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;


# direct methods
.method private constructor <init>(Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p2, "propSearch"    # Lorg/w3c/dom/Element;

    .prologue
    .line 163
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;->this$0:Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    const-string v1, "prop"

    sget-object v2, Lorg/apache/jackrabbit/webdav/DavConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p2, v1, v2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;->searchProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    .line 165
    const-string v0, "match"

    sget-object v1, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p2, v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getChildText(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;->searchString:Ljava/lang/String;

    .line 166
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;Lorg/w3c/dom/Element;Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;
    .param p2, "x1"    # Lorg/w3c/dom/Element;
    .param p3, "x2"    # Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$1;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;-><init>(Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport;Lorg/w3c/dom/Element;)V

    return-void
.end method


# virtual methods
.method protected getSearchProperties()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;->searchProps:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    return-object v0
.end method

.method protected getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/security/report/PrincipalSearchReport$SearchArgument;->searchString:Ljava/lang/String;

    return-object v0
.end method
