.class public abstract Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "AbstractWebdavServlet.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavConstants;


# static fields
.field public static final DEFAULT_AUTHENTICATE_HEADER:Ljava/lang/String; = "Basic realm=\"Jackrabbit Webdav Server\""

.field public static final INIT_PARAM_AUTHENTICATE_HEADER:Ljava/lang/String; = "authenticate-header"

.field public static final INIT_PARAM_CREATE_ABSOLUTE_URI:Ljava/lang/String; = "createAbsoluteURI"

.field public static final INIT_PARAM_CSRF_PROTECTION:Ljava/lang/String; = "csrf-protection"

.field public static final INIT_PARAM_MISSING_AUTH_MAPPING:Ljava/lang/String; = "missing-auth-mapping"

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private authenticate_header:Ljava/lang/String;

.field private createAbsoluteURI:Z

.field private csrfUtil:Lorg/apache/jackrabbit/webdav/util/CSRFUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->createAbsoluteURI:Z

    return-void
.end method

.method private spoolResource(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;Z)V
    .locals 10
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p4, "sendContent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, -0x1

    .line 515
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 516
    const/16 v5, 0x194

    invoke-interface {p2, v5}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 537
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v5, "If-Modified-Since"

    invoke-interface {p1, v5}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v0

    .line 521
    .local v0, "modSince":J
    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    .line 522
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getModificationTime()J

    move-result-wide v2

    .line 525
    .local v2, "modTime":J
    cmp-long v5, v2, v6

    if-eqz v5, :cond_1

    div-long v6, v2, v8

    mul-long/2addr v6, v8

    cmp-long v5, v6, v0

    if-gtz v5, :cond_1

    .line 528
    const/16 v5, 0x130

    invoke-interface {p2, v5}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0

    .line 534
    .end local v2    # "modTime":J
    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v4

    .line 535
    .local v4, "out":Ljava/io/OutputStream;
    :goto_1
    invoke-virtual {p0, p2, v4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getOutputContext(Lorg/apache/jackrabbit/webdav/DavServletResponse;Ljava/io/OutputStream;)Lorg/apache/jackrabbit/webdav/io/OutputContext;

    move-result-object v5

    invoke-interface {p3, v5}, Lorg/apache/jackrabbit/webdav/DavResource;->spool(Lorg/apache/jackrabbit/webdav/io/OutputContext;)V

    .line 536
    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->flushBuffer()V

    goto :goto_0

    .line 534
    .end local v4    # "out":Ljava/io/OutputStream;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected doAcl(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 5
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1355
    instance-of v2, p3, Lorg/apache/jackrabbit/webdav/security/AclResource;

    if-nez v2, :cond_0

    .line 1356
    const/16 v2, 0x195

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1365
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1359
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 1360
    .local v1, "doc":Lorg/w3c/dom/Document;
    if-nez v1, :cond_1

    .line 1361
    new-instance v2, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v3, 0x190

    const-string v4, "ACL request requires a DAV:acl body."

    invoke-direct {v2, v3, v4}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1363
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/security/AclProperty;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/security/AclProperty;

    move-result-object v0

    .line 1364
    .local v0, "acl":Lorg/apache/jackrabbit/webdav/security/AclProperty;
    check-cast p3, Lorg/apache/jackrabbit/webdav/security/AclResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/security/AclResource;->alterAcl(Lorg/apache/jackrabbit/webdav/security/AclProperty;)V

    goto :goto_0
.end method

.method protected doBaselineControl(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1296
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1297
    sget-object v0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to add baseline control. Resource does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1298
    const/16 v0, 0x194

    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1305
    :goto_0
    return-void

    .line 1302
    :cond_0
    instance-of v0, p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1303
    :cond_1
    sget-object v0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaselineControl is not supported by resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1304
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 1309
    :cond_2
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v1, 0x1f5

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v0
.end method

.method protected doBind(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 751
    const/16 v4, 0x194

    invoke-interface {p2, v4}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 753
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getBindInfo()Lorg/apache/jackrabbit/webdav/bind/BindInfo;

    move-result-object v0

    .line 754
    .local v0, "bindInfo":Lorg/apache/jackrabbit/webdav/bind/BindInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/bind/BindInfo;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getHrefLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v5

    invoke-interface {v4, v5, p1, p2}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v2

    .line 755
    .local v2, "oldBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    instance-of v4, v2, Lorg/apache/jackrabbit/webdav/bind/BindableResource;

    if-nez v4, :cond_1

    .line 756
    const/16 v4, 0x195

    invoke-interface {p2, v4}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 767
    .end local v2    # "oldBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 759
    .restart local v2    # "oldBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/bind/BindInfo;->getSegment()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getMemberLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v5

    invoke-interface {v4, v5, p1, p2}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v1

    .line 760
    .local v1, "newBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, p1, v4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->validateDestination(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/WebdavRequest;Z)I

    move-result v3

    .line 761
    .local v3, "status":I
    const/16 v4, 0xcc

    if-le v3, v4, :cond_2

    .line 762
    invoke-interface {p2, v3}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 765
    :cond_2
    check-cast v2, Lorg/apache/jackrabbit/webdav/bind/BindableResource;

    .end local v2    # "oldBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {v2, p3, v1}, Lorg/apache/jackrabbit/webdav/bind/BindableResource;->bind(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 766
    invoke-interface {p2, v3}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0
.end method

.method protected doCheckin(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    instance-of v1, p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-nez v1, :cond_0

    .line 1122
    const/16 v1, 0x195

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1128
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1125
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->checkin()Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, "versionHref":Ljava/lang/String;
    const-string v1, "Location"

    invoke-interface {p2, v1, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const/16 v1, 0xc9

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0
.end method

.method protected doCheckout(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1142
    instance-of v0, p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-nez v0, :cond_0

    .line 1143
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1147
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1146
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->checkout()V

    goto :goto_0
.end method

.method protected doCopy(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x1

    .line 698
    invoke-interface {p1, v4}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getDepth(I)I

    move-result v0

    .line 699
    .local v0, "depth":I
    if-eqz v0, :cond_0

    if-eq v0, v4, :cond_0

    .line 700
    const/16 v3, 0x190

    invoke-interface {p2, v3}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 713
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v4

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getDestinationLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v5

    invoke-interface {v4, v5, p1, p2}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v1

    .line 705
    .local v1, "destResource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-virtual {p0, v1, p1, v3}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->validateDestination(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/WebdavRequest;Z)I

    move-result v2

    .line 706
    .local v2, "status":I
    const/16 v4, 0xcc

    if-le v2, v4, :cond_1

    .line 707
    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 711
    :cond_1
    if-nez v0, :cond_2

    :goto_1
    invoke-interface {p3, v1, v3}, Lorg/apache/jackrabbit/webdav/DavResource;->copy(Lorg/apache/jackrabbit/webdav/DavResource;Z)V

    .line 712
    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0

    .line 711
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected doDelete(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getCollection()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 677
    .local v0, "parent":Lorg/apache/jackrabbit/webdav/DavResource;
    if-eqz v0, :cond_0

    .line 678
    invoke-interface {v0, p3}, Lorg/apache/jackrabbit/webdav/DavResource;->removeMember(Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 679
    const/16 v1, 0xcc

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    .line 683
    :goto_0
    return-void

    .line 681
    :cond_0
    const/16 v1, 0x193

    const-string v2, "Cannot remove the root resource."

    invoke-interface {p2, v1, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doGet(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 501
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->spoolResource(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;Z)V

    .line 502
    return-void
.end method

.method protected doHead(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->spoolResource(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;Z)V

    .line 489
    return-void
.end method

.method protected doLabel(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getLabelInfo()Lorg/apache/jackrabbit/webdav/version/LabelInfo;

    move-result-object v0

    .line 1071
    .local v0, "labelInfo":Lorg/apache/jackrabbit/webdav/version/LabelInfo;
    instance-of v1, p3, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    if-eqz v1, :cond_0

    .line 1072
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/VersionResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/version/VersionResource;->label(Lorg/apache/jackrabbit/webdav/version/LabelInfo;)V

    .line 1079
    :goto_0
    return-void

    .line 1073
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    instance-of v1, p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-eqz v1, :cond_1

    .line 1074
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->label(Lorg/apache/jackrabbit/webdav/version/LabelInfo;)V

    goto :goto_0

    .line 1077
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_1
    const/16 v1, 0x195

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0
.end method

.method protected doLock(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 19
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-interface/range {p1 .. p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getLockInfo()Lorg/apache/jackrabbit/webdav/lock/LockInfo;

    move-result-object v13

    .line 875
    .local v13, "lockInfo":Lorg/apache/jackrabbit/webdav/lock/LockInfo;
    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->isRefreshLock()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 877
    invoke-interface/range {p3 .. p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getLocks()[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    move-result-object v4

    .line 878
    .local v4, "activeLocks":[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 879
    .local v10, "lList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/lock/ActiveLock;>;"
    move-object v5, v4

    .local v5, "arr$":[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    array-length v11, v5

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v3, v5, v9

    .line 881
    .local v3, "activeLock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getType()Lorg/apache/jackrabbit/webdav/lock/Type;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->setType(Lorg/apache/jackrabbit/webdav/lock/Type;)V

    .line 882
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getScope()Lorg/apache/jackrabbit/webdav/lock/Scope;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/apache/jackrabbit/webdav/lock/LockInfo;->setScope(Lorg/apache/jackrabbit/webdav/lock/Scope;)V

    .line 884
    sget-object v17, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->GETETAG:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/jackrabbit/webdav/DavResource;->getProperty(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v7

    .line 885
    .local v7, "etagProp":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getValue()Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 886
    .local v6, "etag":Ljava/lang/String;
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getHref()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2, v6}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->matchesIfHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 887
    invoke-interface {v3}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getToken()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v13, v1}, Lorg/apache/jackrabbit/webdav/DavResource;->refreshLock(Lorg/apache/jackrabbit/webdav/lock/LockInfo;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 885
    .end local v6    # "etag":Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 890
    .end local v3    # "activeLock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .end local v7    # "etagProp":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 891
    new-instance v17, Lorg/apache/jackrabbit/webdav/DavException;

    const/16 v18, 0x19c

    invoke-direct/range {v17 .. v18}, Lorg/apache/jackrabbit/webdav/DavException;-><init>(I)V

    throw v17

    .line 893
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    .line 894
    .local v15, "refreshedLocks":[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendRefreshLockResponse([Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V

    .line 913
    .end local v4    # "activeLocks":[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .end local v5    # "arr$":[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    .end local v9    # "i$":I
    .end local v10    # "lList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/lock/ActiveLock;>;"
    .end local v11    # "len$":I
    .end local v15    # "refreshedLocks":[Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    :goto_2
    return-void

    .line 896
    :cond_4
    const/16 v16, 0xc8

    .line 897
    .local v16, "status":I
    invoke-interface/range {p3 .. p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v17

    if-nez v17, :cond_5

    .line 899
    const/16 v16, 0xc9

    .line 903
    :cond_5
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Lorg/apache/jackrabbit/webdav/DavResource;->lock(Lorg/apache/jackrabbit/webdav/lock/LockInfo;)Lorg/apache/jackrabbit/webdav/lock/ActiveLock;

    move-result-object v12

    .line 905
    .local v12, "lock":Lorg/apache/jackrabbit/webdav/lock/ActiveLock;
    new-instance v8, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    const-string v17, "Lock-Token"

    invoke-interface {v12}, Lorg/apache/jackrabbit/webdav/lock/ActiveLock;->getToken()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v8, "header":Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;
    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v8}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->getHeaderValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    new-instance v14, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-direct {v14}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;-><init>()V

    .line 910
    .local v14, "propSet":Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    new-instance v17, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Lorg/apache/jackrabbit/webdav/lock/LockDiscovery;-><init>(Lorg/apache/jackrabbit/webdav/lock/ActiveLock;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->add(Lorg/apache/jackrabbit/webdav/property/DavProperty;)Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 911
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v14, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V

    goto :goto_2
.end method

.method protected doMerge(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1180
    instance-of v2, p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-nez v2, :cond_0

    .line 1181
    const/16 v2, 0x195

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1187
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1184
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getMergeInfo()Lorg/apache/jackrabbit/webdav/version/MergeInfo;

    move-result-object v0

    .line 1185
    .local v0, "info":Lorg/apache/jackrabbit/webdav/version/MergeInfo;
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->merge(Lorg/apache/jackrabbit/webdav/version/MergeInfo;)Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v1

    .line 1186
    .local v1, "ms":Lorg/apache/jackrabbit/webdav/MultiStatus;
    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendMultiStatus(Lorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_0
.end method

.method protected doMkActivity(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1253
    sget-object v1, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create activity: A resource already exists at the request-URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1254
    const/16 v1, 0x193

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1281
    :goto_0
    return-void

    .line 1258
    :cond_0
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getCollection()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 1259
    .local v0, "parentResource":Lorg/apache/jackrabbit/webdav/DavResource;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1261
    :cond_1
    const/16 v1, 0x199

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 1265
    :cond_2
    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResource;->getComplianceClass()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1266
    const/16 v1, 0x195

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 1270
    :cond_3
    instance-of v1, p3, Lorg/apache/jackrabbit/webdav/version/ActivityResource;

    if-nez v1, :cond_4

    .line 1271
    sget-object v1, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    const-string v2, "Unable to create activity: ActivityResource expected"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1272
    const/16 v1, 0x1f4

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 1277
    :cond_4
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getInputContext(Lorg/apache/jackrabbit/webdav/DavServletRequest;Ljava/io/InputStream;)Lorg/apache/jackrabbit/webdav/io/InputContext;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lorg/apache/jackrabbit/webdav/DavResource;->addMember(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/io/InputContext;)V

    .line 1280
    const/16 v1, 0xc9

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0
.end method

.method protected doMkCol(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getCollection()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 646
    .local v0, "parentResource":Lorg/apache/jackrabbit/webdav/DavResource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 648
    :cond_0
    const/16 v1, 0x199

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 663
    :goto_0
    return-void

    .line 652
    :cond_1
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    const/16 v1, 0x195

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 657
    :cond_2
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getContentLength()I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "Transfer-Encoding"

    invoke-interface {p1, v1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 658
    :cond_3
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getInputContext(Lorg/apache/jackrabbit/webdav/DavServletRequest;Ljava/io/InputStream;)Lorg/apache/jackrabbit/webdav/io/InputContext;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lorg/apache/jackrabbit/webdav/DavResource;->addMember(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/io/InputContext;)V

    .line 662
    :goto_1
    const/16 v1, 0xc9

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0

    .line 660
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getInputContext(Lorg/apache/jackrabbit/webdav/DavServletRequest;Ljava/io/InputStream;)Lorg/apache/jackrabbit/webdav/io/InputContext;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lorg/apache/jackrabbit/webdav/DavResource;->addMember(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/io/InputContext;)V

    goto :goto_1
.end method

.method protected doMkWorkspace(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1221
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    sget-object v1, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    const-string v2, "Cannot create a new workspace. Resource already exists."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1223
    const/16 v1, 0x193

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1239
    :goto_0
    return-void

    .line 1227
    :cond_0
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getCollection()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 1228
    .local v0, "parentResource":Lorg/apache/jackrabbit/webdav/DavResource;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResource;->isCollection()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1230
    :cond_1
    const/16 v1, 0x199

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 1233
    :cond_2
    instance-of v1, v0, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;

    if-nez v1, :cond_3

    .line 1234
    const/16 v1, 0x195

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 1237
    :cond_3
    check-cast v0, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;

    .end local v0    # "parentResource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {v0, p3}, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;->addWorkspace(Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 1238
    const/16 v1, 0xc9

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0
.end method

.method protected doMove(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getDestinationLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 728
    .local v0, "destResource":Lorg/apache/jackrabbit/webdav/DavResource;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v2}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->validateDestination(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/WebdavRequest;Z)I

    move-result v1

    .line 729
    .local v1, "status":I
    const/16 v2, 0xcc

    if-le v1, v2, :cond_0

    .line 730
    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 736
    :goto_0
    return-void

    .line 734
    :cond_0
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/DavResource;->move(Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 735
    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0
.end method

.method protected doOptions(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 11
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xc8

    .line 456
    const-string v7, "DAV"

    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getComplianceClass()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v7, "Allow"

    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getSupportedMethods()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v7, "MS-Author-Via"

    const-string v8, "DAV"

    invoke-interface {p2, v7, v8}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    instance-of v7, p3, Lorg/apache/jackrabbit/webdav/search/SearchResource;

    if-eqz v7, :cond_0

    move-object v7, p3

    .line 460
    check-cast v7, Lorg/apache/jackrabbit/webdav/search/SearchResource;

    invoke-interface {v7}, Lorg/apache/jackrabbit/webdav/search/SearchResource;->getQueryGrammerSet()Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;->getQueryLanguages()[Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, "langs":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 462
    .local v2, "lang":Ljava/lang/String;
    const-string v7, "DASL"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "lang":Ljava/lang/String;
    .end local v3    # "langs":[Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_0
    const/4 v6, 0x0

    .line 467
    .local v6, "oR":Lorg/apache/jackrabbit/webdav/version/OptionsResponse;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getOptionsInfo()Lorg/apache/jackrabbit/webdav/version/OptionsInfo;

    move-result-object v5

    .line 468
    .local v5, "oInfo":Lorg/apache/jackrabbit/webdav/version/OptionsInfo;
    if-eqz v5, :cond_1

    instance-of v7, p3, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;

    if-eqz v7, :cond_1

    .line 469
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v5}, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;->getOptionResponse(Lorg/apache/jackrabbit/webdav/version/OptionsInfo;)Lorg/apache/jackrabbit/webdav/version/OptionsResponse;

    move-result-object v6

    .line 471
    :cond_1
    if-nez v6, :cond_2

    .line 472
    invoke-interface {p2, v10}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    .line 476
    :goto_1
    return-void

    .line 474
    :cond_2
    invoke-interface {p2, v6, v10}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V

    goto :goto_1
.end method

.method protected doOrderPatch(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 950
    instance-of v1, p3, Lorg/apache/jackrabbit/webdav/ordering/OrderingResource;

    if-nez v1, :cond_0

    .line 951
    const/16 v1, 0x195

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 963
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 955
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getOrderPatch()Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;

    move-result-object v0

    .line 956
    .local v0, "op":Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;
    if-nez v0, :cond_1

    .line 957
    const/16 v1, 0x190

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 961
    :cond_1
    check-cast p3, Lorg/apache/jackrabbit/webdav/ordering/OrderingResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/ordering/OrderingResource;->orderMembers(Lorg/apache/jackrabbit/webdav/ordering/OrderPatch;)V

    .line 962
    const/16 v1, 0xc8

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0
.end method

.method protected doPoll(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 1029
    instance-of v1, p3, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;

    if-nez v1, :cond_0

    .line 1030
    const/16 v1, 0x195

    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1036
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1033
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    check-cast p3, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getPollTimeout()J

    move-result-wide v2

    invoke-interface {p3, v1, v2, v3}, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;->poll(Ljava/lang/String;J)Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;

    move-result-object v0

    .line 1035
    .local v0, "ed":Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;
    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendPollResponse(Lorg/apache/jackrabbit/webdav/observation/EventDiscovery;)V

    goto :goto_0
.end method

.method protected doPost(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 599
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 600
    return-void
.end method

.method protected doPropFind(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 5
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 551
    const/16 v4, 0x194

    invoke-interface {p2, v4}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 562
    :goto_0
    return-void

    .line 555
    :cond_0
    const v4, 0x7fffffff

    invoke-interface {p1, v4}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getDepth(I)I

    move-result v0

    .line 556
    .local v0, "depth":I
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getPropFindProperties()Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    move-result-object v3

    .line 557
    .local v3, "requestProperties":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getPropFindType()I

    move-result v2

    .line 559
    .local v2, "propfindType":I
    new-instance v1, Lorg/apache/jackrabbit/webdav/MultiStatus;

    invoke-direct {v1}, Lorg/apache/jackrabbit/webdav/MultiStatus;-><init>()V

    .line 560
    .local v1, "mstatus":Lorg/apache/jackrabbit/webdav/MultiStatus;
    invoke-virtual {v1, p3, v3, v2, v0}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResourceProperties(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;II)V

    .line 561
    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendMultiStatus(Lorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_0
.end method

.method protected doPropPatch(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 576
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getPropPatchChangeList()Ljava/util/List;

    move-result-object v0

    .line 577
    .local v0, "changeList":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/jackrabbit/webdav/property/PropEntry;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    const/16 v3, 0x190

    invoke-interface {p2, v3}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 586
    :goto_0
    return-void

    .line 582
    :cond_0
    new-instance v1, Lorg/apache/jackrabbit/webdav/MultiStatus;

    invoke-direct {v1}, Lorg/apache/jackrabbit/webdav/MultiStatus;-><init>()V

    .line 583
    .local v1, "ms":Lorg/apache/jackrabbit/webdav/MultiStatus;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/DavResource;->alterProperties(Ljava/util/List;)Lorg/apache/jackrabbit/webdav/MultiStatusResponse;

    move-result-object v2

    .line 584
    .local v2, "msr":Lorg/apache/jackrabbit/webdav/MultiStatusResponse;
    invoke-virtual {v1, v2}, Lorg/apache/jackrabbit/webdav/MultiStatus;->addResponse(Lorg/apache/jackrabbit/webdav/MultiStatusResponse;)V

    .line 585
    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendMultiStatus(Lorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_0
.end method

.method protected doPut(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->getCollection()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 615
    .local v0, "parentResource":Lorg/apache/jackrabbit/webdav/DavResource;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 617
    :cond_0
    const/16 v2, 0x199

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 631
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 624
    const/16 v1, 0xcc

    .line 629
    .local v1, "status":I
    :goto_1
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getInputStream()Ljavax/servlet/ServletInputStream;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getInputContext(Lorg/apache/jackrabbit/webdav/DavServletRequest;Ljava/io/InputStream;)Lorg/apache/jackrabbit/webdav/io/InputContext;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Lorg/apache/jackrabbit/webdav/DavResource;->addMember(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/io/InputContext;)V

    .line 630
    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0

    .line 626
    .end local v1    # "status":I
    :cond_2
    const/16 v1, 0xc9

    .restart local v1    # "status":I
    goto :goto_1
.end method

.method protected doRebind(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 781
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 782
    const/16 v4, 0x194

    invoke-interface {p2, v4}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 784
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getRebindInfo()Lorg/apache/jackrabbit/webdav/bind/RebindInfo;

    move-result-object v2

    .line 785
    .local v2, "rebindInfo":Lorg/apache/jackrabbit/webdav/bind/RebindInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/bind/RebindInfo;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getHrefLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v5

    invoke-interface {v4, v5, p1, p2}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v1

    .line 786
    .local v1, "oldBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    instance-of v4, v1, Lorg/apache/jackrabbit/webdav/bind/BindableResource;

    if-nez v4, :cond_1

    .line 787
    const/16 v4, 0x195

    invoke-interface {p2, v4}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 798
    .end local v1    # "oldBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 790
    .restart local v1    # "oldBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/jackrabbit/webdav/bind/RebindInfo;->getSegment()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getMemberLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v5

    invoke-interface {v4, v5, p1, p2}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 791
    .local v0, "newBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, p1, v4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->validateDestination(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/WebdavRequest;Z)I

    move-result v3

    .line 792
    .local v3, "status":I
    const/16 v4, 0xcc

    if-le v3, v4, :cond_2

    .line 793
    invoke-interface {p2, v3}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 796
    :cond_2
    check-cast v1, Lorg/apache/jackrabbit/webdav/bind/BindableResource;

    .end local v1    # "oldBinding":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {v1, p3, v0}, Lorg/apache/jackrabbit/webdav/bind/BindableResource;->rebind(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 797
    invoke-interface {p2, v3}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0
.end method

.method protected doReport(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1093
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getReportInfo()Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;

    move-result-object v0

    .line 1095
    .local v0, "info":Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;
    instance-of v3, p3, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;

    if-eqz v3, :cond_0

    .line 1096
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/version/DeltaVResource;->getReport(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Lorg/apache/jackrabbit/webdav/version/report/Report;

    move-result-object v1

    .line 1104
    .local v1, "report":Lorg/apache/jackrabbit/webdav/version/report/Report;
    :goto_0
    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/version/report/Report;->isMultiStatusReport()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xcf

    .line 1105
    .local v2, "statusCode":I
    :goto_1
    invoke-interface {p2, v1, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendXmlResponse(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;I)V

    .line 1106
    .end local v1    # "report":Lorg/apache/jackrabbit/webdav/version/report/Report;
    .end local v2    # "statusCode":I
    :goto_2
    return-void

    .line 1097
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    instance-of v3, p3, Lorg/apache/jackrabbit/webdav/security/AclResource;

    if-eqz v3, :cond_1

    .line 1098
    check-cast p3, Lorg/apache/jackrabbit/webdav/security/AclResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/security/AclResource;->getReport(Lorg/apache/jackrabbit/webdav/version/report/ReportInfo;)Lorg/apache/jackrabbit/webdav/version/report/Report;

    move-result-object v1

    .restart local v1    # "report":Lorg/apache/jackrabbit/webdav/version/report/Report;
    goto :goto_0

    .line 1100
    .end local v1    # "report":Lorg/apache/jackrabbit/webdav/version/report/Report;
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_1
    const/16 v3, 0x195

    invoke-interface {p2, v3}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_2

    .line 1104
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    .restart local v1    # "report":Lorg/apache/jackrabbit/webdav/version/report/Report;
    :cond_2
    const/16 v2, 0xc8

    goto :goto_1
.end method

.method protected doSearch(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1329
    instance-of v2, p3, Lorg/apache/jackrabbit/webdav/search/SearchResource;

    if-nez v2, :cond_0

    .line 1330
    const/16 v2, 0x195

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1342
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1333
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getRequestDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 1334
    .local v0, "doc":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_1

    .line 1335
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/jackrabbit/webdav/search/SearchInfo;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/search/SearchInfo;

    move-result-object v1

    .line 1336
    .local v1, "sR":Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    check-cast p3, Lorg/apache/jackrabbit/webdav/search/SearchResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v1}, Lorg/apache/jackrabbit/webdav/search/SearchResource;->search(Lorg/apache/jackrabbit/webdav/search/SearchInfo;)Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendMultiStatus(Lorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_0

    .line 1340
    .end local v1    # "sR":Lorg/apache/jackrabbit/webdav/search/SearchInfo;
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_1
    check-cast p3, Lorg/apache/jackrabbit/webdav/search/SearchResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lorg/apache/jackrabbit/webdav/search/SearchResource;->search(Lorg/apache/jackrabbit/webdav/search/SearchInfo;)Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendMultiStatus(Lorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_0
.end method

.method protected doSubscribe(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 979
    instance-of v2, p3, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;

    if-nez v2, :cond_0

    .line 980
    const/16 v2, 0x195

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 991
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 984
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getSubscriptionInfo()Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;

    move-result-object v0

    .line 985
    .local v0, "info":Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;
    if-nez v0, :cond_1

    .line 986
    const/16 v2, 0x19f

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    goto :goto_0

    .line 989
    :cond_1
    check-cast p3, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;->subscribe(Lorg/apache/jackrabbit/webdav/observation/SubscriptionInfo;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/observation/Subscription;

    move-result-object v1

    .line 990
    .local v1, "subs":Lorg/apache/jackrabbit/webdav/observation/Subscription;
    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendSubscriptionResponse(Lorg/apache/jackrabbit/webdav/observation/Subscription;)V

    goto :goto_0
.end method

.method protected doUnbind(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 4
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 812
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getUnbindInfo()Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;

    move-result-object v1

    .line 813
    .local v1, "unbindInfo":Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/bind/UnbindInfo;->getSegment()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getMemberLocator(Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    .line 814
    .local v0, "srcResource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/DavResource;->removeMember(Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 815
    return-void
.end method

.method protected doUncheckout(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1161
    instance-of v0, p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-nez v0, :cond_0

    .line 1162
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1166
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1165
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->uncheckout()V

    goto :goto_0
.end method

.method protected doUnlock(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 926
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getLockToken()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "lockToken":Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getTransactionInfo()Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;

    move-result-object v1

    .line 928
    .local v1, "tInfo":Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;
    if-eqz v1, :cond_0

    .line 929
    check-cast p3, Lorg/apache/jackrabbit/webdav/transaction/TransactionResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0, v1}, Lorg/apache/jackrabbit/webdav/transaction/TransactionResource;->unlock(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/transaction/TransactionInfo;)V

    .line 933
    :goto_0
    const/16 v2, 0xcc

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    .line 934
    return-void

    .line 931
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/DavResource;->unlock(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected doUnsubscribe(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 1007
    instance-of v0, p3, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;

    if-nez v0, :cond_0

    .line 1008
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1013
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1011
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    check-cast p3, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/observation/ObservationResource;->unsubscribe(Ljava/lang/String;)V

    .line 1012
    const/16 v0, 0xcc

    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setStatus(I)V

    goto :goto_0
.end method

.method protected doUpdate(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1201
    instance-of v2, p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    if-nez v2, :cond_0

    .line 1202
    const/16 v2, 0x195

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1208
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1205
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getUpdateInfo()Lorg/apache/jackrabbit/webdav/version/UpdateInfo;

    move-result-object v0

    .line 1206
    .local v0, "info":Lorg/apache/jackrabbit/webdav/version/UpdateInfo;
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3, v0}, Lorg/apache/jackrabbit/webdav/version/VersionControlledResource;->update(Lorg/apache/jackrabbit/webdav/version/UpdateInfo;)Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v1

    .line 1207
    .local v1, "ms":Lorg/apache/jackrabbit/webdav/MultiStatus;
    invoke-interface {p2, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendMultiStatus(Lorg/apache/jackrabbit/webdav/MultiStatus;)V

    goto :goto_0
.end method

.method protected doVersionControl(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1050
    instance-of v0, p3, Lorg/apache/jackrabbit/webdav/version/VersionableResource;

    if-nez v0, :cond_0

    .line 1051
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 1055
    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :goto_0
    return-void

    .line 1054
    .restart local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :cond_0
    check-cast p3, Lorg/apache/jackrabbit/webdav/version/VersionableResource;

    .end local p3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-interface {p3}, Lorg/apache/jackrabbit/webdav/version/VersionableResource;->addVersionControl()V

    goto :goto_0
.end method

.method protected execute(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;ILorg/apache/jackrabbit/webdav/DavResource;)Z
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "method"    # I
    .param p4, "resource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;,
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    .line 340
    packed-switch p3, :pswitch_data_0

    .line 442
    const/4 v0, 0x0

    .line 444
    :goto_0
    return v0

    .line 342
    :pswitch_0
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doGet(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 444
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doHead(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 348
    :pswitch_2
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doPropFind(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 351
    :pswitch_3
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doPropPatch(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 354
    :pswitch_4
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doPost(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 357
    :pswitch_5
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doPut(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 360
    :pswitch_6
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doDelete(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 363
    :pswitch_7
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doCopy(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 366
    :pswitch_8
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doMove(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 369
    :pswitch_9
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doMkCol(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 372
    :pswitch_a
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doOptions(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 375
    :pswitch_b
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doLock(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 378
    :pswitch_c
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doUnlock(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 381
    :pswitch_d
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doOrderPatch(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 384
    :pswitch_e
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doSubscribe(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 387
    :pswitch_f
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doUnsubscribe(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 390
    :pswitch_10
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doPoll(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 393
    :pswitch_11
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doSearch(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 396
    :pswitch_12
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doVersionControl(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 399
    :pswitch_13
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doLabel(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 402
    :pswitch_14
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doReport(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 405
    :pswitch_15
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doCheckin(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 408
    :pswitch_16
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doCheckout(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 411
    :pswitch_17
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doUncheckout(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 414
    :pswitch_18
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doMerge(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 417
    :pswitch_19
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doUpdate(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 420
    :pswitch_1a
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doMkWorkspace(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 423
    :pswitch_1b
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doMkActivity(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 426
    :pswitch_1c
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doBaselineControl(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 429
    :pswitch_1d
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doAcl(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 432
    :pswitch_1e
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doRebind(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 435
    :pswitch_1f
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doUnbind(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto :goto_1

    .line 438
    :pswitch_20
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->doBind(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavResource;)V

    goto/16 :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public getAuthenticateHeaderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->authenticate_header:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getDavSessionProvider()Lorg/apache/jackrabbit/webdav/DavSessionProvider;
.end method

.method protected getInputContext(Lorg/apache/jackrabbit/webdav/DavServletRequest;Ljava/io/InputStream;)Lorg/apache/jackrabbit/webdav/io/InputContext;
    .locals 1
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/DavServletRequest;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1376
    new-instance v0, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;

    invoke-direct {v0, p1, p2}, Lorg/apache/jackrabbit/webdav/io/InputContextImpl;-><init>(Ljavax/servlet/http/HttpServletRequest;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public abstract getLocatorFactory()Lorg/apache/jackrabbit/webdav/DavLocatorFactory;
.end method

.method protected getOutputContext(Lorg/apache/jackrabbit/webdav/DavServletResponse;Ljava/io/OutputStream;)Lorg/apache/jackrabbit/webdav/io/OutputContext;
    .locals 1
    .param p1, "response"    # Lorg/apache/jackrabbit/webdav/DavServletResponse;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 1390
    new-instance v0, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;

    invoke-direct {v0, p1, p2}, Lorg/apache/jackrabbit/webdav/io/OutputContextImpl;-><init>(Ljavax/servlet/http/HttpServletResponse;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public abstract getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;
.end method

.method public init()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->init()V

    .line 165
    const-string v2, "authenticate-header"

    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->authenticate_header:Ljava/lang/String;

    .line 166
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->authenticate_header:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 167
    const-string v2, "Basic realm=\"Jackrabbit Webdav Server\""

    iput-object v2, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->authenticate_header:Ljava/lang/String;

    .line 169
    :cond_0
    sget-object v2, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticate-header = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->authenticate_header:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 172
    const-string v2, "csrf-protection"

    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "csrfParam":Ljava/lang/String;
    new-instance v2, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;

    invoke-direct {v2, v0}, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->csrfUtil:Lorg/apache/jackrabbit/webdav/util/CSRFUtil;

    .line 174
    sget-object v2, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "csrf-protection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 177
    const-string v2, "createAbsoluteURI"

    invoke-virtual {p0, v2}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "param":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 179
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->createAbsoluteURI:Z

    .line 181
    :cond_1
    sget-object v2, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAbsoluteURI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->createAbsoluteURI:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method protected isCreateAbsoluteURI()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->createAbsoluteURI:Z

    return v0
.end method

.method protected abstract isPreconditionValid(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/DavResource;)Z
.end method

.method protected sendUnauthorized(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavException;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p2, "response"    # Lorg/apache/jackrabbit/webdav/WebdavResponse;
    .param p3, "error"    # Lorg/apache/jackrabbit/webdav/DavException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x191

    .line 317
    const-string v0, "WWW-Authenticate"

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getAuthenticateHeaderValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/DavException;->getErrorCode()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 319
    :cond_0
    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/DavException;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Lorg/apache/jackrabbit/webdav/DavException;->getStatusPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    new-instance v4, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getLocatorFactory()Lorg/apache/jackrabbit/webdav/DavLocatorFactory;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->isCreateAbsoluteURI()Z

    move-result v7

    invoke-direct {v4, p1, v6, v7}, Lorg/apache/jackrabbit/webdav/WebdavRequestImpl;-><init>(Ljavax/servlet/http/HttpServletRequest;Lorg/apache/jackrabbit/webdav/DavLocatorFactory;Z)V

    .line 270
    .local v4, "webdavRequest":Lorg/apache/jackrabbit/webdav/WebdavRequest;
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/jackrabbit/webdav/DavMethods;->getMethodCode(Ljava/lang/String;)I

    move-result v1

    .line 271
    .local v1, "methodCode":I
    invoke-static {v4}, Lorg/apache/jackrabbit/webdav/DavMethods;->isDeltaVMethod(Lorg/apache/jackrabbit/webdav/DavServletRequest;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x14

    if-eq v6, v1, :cond_0

    const/16 v6, 0x13

    if-eq v6, v1, :cond_0

    const/4 v2, 0x1

    .line 272
    .local v2, "noCache":Z
    :goto_0
    new-instance v5, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;

    invoke-direct {v5, p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavResponseImpl;-><init>(Ljavax/servlet/http/HttpServletResponse;Z)V

    .line 275
    .local v5, "webdavResponse":Lorg/apache/jackrabbit/webdav/WebdavResponse;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getDavSessionProvider()Lorg/apache/jackrabbit/webdav/DavSessionProvider;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/jackrabbit/webdav/DavSessionProvider;->attachSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)Z
    :try_end_0
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 302
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getDavSessionProvider()Lorg/apache/jackrabbit/webdav/DavSessionProvider;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/jackrabbit/webdav/DavSessionProvider;->releaseSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)V

    .line 304
    :goto_1
    return-void

    .line 271
    .end local v2    # "noCache":Z
    .end local v5    # "webdavResponse":Lorg/apache/jackrabbit/webdav/WebdavResponse;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 280
    .restart local v2    # "noCache":Z
    .restart local v5    # "webdavResponse":Lorg/apache/jackrabbit/webdav/WebdavResponse;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->csrfUtil:Lorg/apache/jackrabbit/webdav/util/CSRFUtil;

    invoke-virtual {v6, v4}, Lorg/apache/jackrabbit/webdav/util/CSRFUtil;->isValidRequest(Ljavax/servlet/http/HttpServletRequest;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 281
    const/16 v6, 0x193

    invoke-interface {v5, v6}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V
    :try_end_1
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getDavSessionProvider()Lorg/apache/jackrabbit/webdav/DavSessionProvider;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/jackrabbit/webdav/DavSessionProvider;->releaseSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)V

    goto :goto_1

    .line 286
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getResourceFactory()Lorg/apache/jackrabbit/webdav/DavResourceFactory;

    move-result-object v6

    invoke-interface {v4}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getRequestLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v7

    invoke-interface {v6, v7, v4, v5}, Lorg/apache/jackrabbit/webdav/DavResourceFactory;->createResource(Lorg/apache/jackrabbit/webdav/DavResourceLocator;Lorg/apache/jackrabbit/webdav/DavServletRequest;Lorg/apache/jackrabbit/webdav/DavServletResponse;)Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v3

    .line 287
    .local v3, "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    invoke-virtual {p0, v4, v3}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->isPreconditionValid(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/DavResource;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 288
    const/16 v6, 0x19c

    invoke-interface {v5, v6}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(I)V
    :try_end_2
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getDavSessionProvider()Lorg/apache/jackrabbit/webdav/DavSessionProvider;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/jackrabbit/webdav/DavSessionProvider;->releaseSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)V

    goto :goto_1

    .line 291
    :cond_3
    :try_start_3
    invoke-virtual {p0, v4, v5, v1, v3}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->execute(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;ILorg/apache/jackrabbit/webdav/DavResource;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 292
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_3
    .catch Lorg/apache/jackrabbit/webdav/DavException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    :cond_4
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getDavSessionProvider()Lorg/apache/jackrabbit/webdav/DavSessionProvider;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/jackrabbit/webdav/DavSessionProvider;->releaseSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)V

    goto :goto_1

    .line 295
    .end local v3    # "resource":Lorg/apache/jackrabbit/webdav/DavResource;
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Lorg/apache/jackrabbit/webdav/DavException;
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/DavException;->getErrorCode()I

    move-result v6

    const/16 v7, 0x191

    if-ne v6, v7, :cond_5

    .line 297
    invoke-virtual {p0, v4, v5, v0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->sendUnauthorized(Lorg/apache/jackrabbit/webdav/WebdavRequest;Lorg/apache/jackrabbit/webdav/WebdavResponse;Lorg/apache/jackrabbit/webdav/DavException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 302
    :goto_2
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getDavSessionProvider()Lorg/apache/jackrabbit/webdav/DavSessionProvider;

    move-result-object v6

    invoke-interface {v6, v4}, Lorg/apache/jackrabbit/webdav/DavSessionProvider;->releaseSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)V

    goto :goto_1

    .line 299
    :cond_5
    :try_start_5
    invoke-interface {v5, v0}, Lorg/apache/jackrabbit/webdav/WebdavResponse;->sendError(Lorg/apache/jackrabbit/webdav/DavException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 302
    .end local v0    # "e":Lorg/apache/jackrabbit/webdav/DavException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/server/AbstractWebdavServlet;->getDavSessionProvider()Lorg/apache/jackrabbit/webdav/DavSessionProvider;

    move-result-object v7

    invoke-interface {v7, v4}, Lorg/apache/jackrabbit/webdav/DavSessionProvider;->releaseSession(Lorg/apache/jackrabbit/webdav/WebdavRequest;)V

    throw v6
.end method

.method public abstract setDavSessionProvider(Lorg/apache/jackrabbit/webdav/DavSessionProvider;)V
.end method

.method public abstract setLocatorFactory(Lorg/apache/jackrabbit/webdav/DavLocatorFactory;)V
.end method

.method public abstract setResourceFactory(Lorg/apache/jackrabbit/webdav/DavResourceFactory;)V
.end method

.method protected validateDestination(Lorg/apache/jackrabbit/webdav/DavResource;Lorg/apache/jackrabbit/webdav/WebdavRequest;Z)I
    .locals 4
    .param p1, "destResource"    # Lorg/apache/jackrabbit/webdav/DavResource;
    .param p2, "request"    # Lorg/apache/jackrabbit/webdav/WebdavRequest;
    .param p3, "checkHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/jackrabbit/webdav/DavException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x19c

    .line 830
    if-eqz p3, :cond_2

    .line 831
    const-string v2, "Destination"

    invoke-interface {p2, v2}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "destHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 833
    :cond_0
    const/16 v1, 0x190

    .line 859
    .end local v0    # "destHeader":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 836
    :cond_2
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->getRequestLocator()Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 837
    const/16 v1, 0x193

    goto :goto_0

    .line 841
    :cond_3
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 842
    invoke-interface {p2}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->isOverwrite()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    invoke-interface {p2, p1}, Lorg/apache/jackrabbit/webdav/WebdavRequest;->matchesIfHeader(Lorg/apache/jackrabbit/webdav/DavResource;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 848
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResource;->getCollection()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/jackrabbit/webdav/DavResource;->removeMember(Lorg/apache/jackrabbit/webdav/DavResource;)V

    .line 849
    const/16 v1, 0xcc

    .local v1, "status":I
    goto :goto_0

    .line 857
    .end local v1    # "status":I
    :cond_4
    const/16 v1, 0xc9

    .restart local v1    # "status":I
    goto :goto_0
.end method
