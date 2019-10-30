.class public Lcom/owncloud/android/lib/resources/files/SearchOperation;
.super Lcom/owncloud/android/lib/common/operations/RemoteOperation;
.source "SearchOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;,
        Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;
    }
.end annotation


# static fields
.field private static final DAV_NAMESPACE:Ljava/lang/String; = "DAV:"

.field private static final HEADER_CONTENT_TYPE_VALUE:Ljava/lang/String; = "text/xml"


# instance fields
.field private searchQuery:Ljava/lang/String;

.field private searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "searchType"    # Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/owncloud/android/lib/common/operations/RemoteOperation;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchQuery:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/owncloud/android/lib/resources/files/SearchOperation;)Lorg/w3c/dom/Document;
    .locals 1
    .param p0, "x0"    # Lcom/owncloud/android/lib/resources/files/SearchOperation;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/owncloud/android/lib/resources/files/SearchOperation;->createQuery()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private createQuery()Lorg/w3c/dom/Document;
    .locals 43

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchQuery:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 158
    .local v20, "internalSearchString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FAVORITE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 159
    const-string v20, "yes"

    .line 164
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v28

    .line 171
    .local v28, "query":Lorg/w3c/dom/Document;
    const-string v40, "DAV:"

    const-string v41, "d:searchrequest"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v35

    .line 172
    .local v35, "searchRequestElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:basicsearch"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 173
    .local v3, "basicSearchElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:select"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v36

    .line 174
    .local v36, "selectElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:prop"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v37

    .line 176
    .local v37, "selectPropsElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:displayname"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 177
    .local v12, "displayNameElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:getcontenttype"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 178
    .local v6, "contentTypeElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:resourcetype"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v33

    .line 179
    .local v33, "resourceTypeElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:getcontentlength"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 180
    .local v5, "contentLengthElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:getlastmodified"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v21

    .line 181
    .local v21, "lastModifiedElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:creationdate"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 182
    .local v7, "creationDate":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:getetag"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 183
    .local v14, "etagElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:quota-used-bytes"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v31

    .line 184
    .local v31, "quotaUsedElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:quota-available-bytes"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v30

    .line 185
    .local v30, "quotaAvailableElement":Lorg/w3c/dom/Element;
    const-string v40, "http://owncloud.org/ns"

    const-string v41, "oc:permissions"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 186
    .local v26, "permissionsElement":Lorg/w3c/dom/Element;
    const-string v40, "http://owncloud.org/ns"

    const-string v41, "oc:id"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v32

    .line 187
    .local v32, "remoteIdElement":Lorg/w3c/dom/Element;
    const-string v40, "http://owncloud.org/ns"

    const-string v41, "oc:size"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v38

    .line 188
    .local v38, "sizeElement":Lorg/w3c/dom/Element;
    const-string v40, "http://owncloud.org/ns"

    const-string v41, "oc:favorite"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 190
    .local v15, "favoriteElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v37

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 191
    move-object/from16 v0, v37

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 192
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 193
    move-object/from16 v0, v37

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 194
    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 195
    move-object/from16 v0, v37

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 196
    move-object/from16 v0, v37

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 197
    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 198
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 199
    move-object/from16 v0, v37

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 200
    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    invoke-interface/range {v37 .. v38}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 202
    move-object/from16 v0, v37

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 204
    const-string v40, "DAV:"

    const-string v41, "d:from"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 205
    .local v17, "fromElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:scope"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v34

    .line 206
    .local v34, "scopeElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:href"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 207
    .local v18, "hrefElement":Lorg/w3c/dom/Element;
    const-string v40, "DAV:"

    const-string v41, "d:depth"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 208
    .local v10, "depthElement":Lorg/w3c/dom/Element;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "/files/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Lcom/owncloud/android/lib/resources/files/SearchOperation;->getClient()Lcom/owncloud/android/lib/common/OwnCloudClient;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getUsername()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    .line 209
    .local v19, "hrefTextElement":Lorg/w3c/dom/Text;
    const-string v40, "infinity"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v11

    .line 210
    .local v11, "depthTextElement":Lorg/w3c/dom/Text;
    const-string v40, "DAV:"

    const-string v41, "d:where"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v39

    .line 212
    .local v39, "whereElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FAVORITE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_3

    .line 213
    const-string v40, "DAV:"

    const-string v41, "d:eq"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 220
    .local v13, "equalsElement":Lorg/w3c/dom/Element;
    :goto_0
    const-string v40, "DAV:"

    const-string v41, "d:prop"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    .line 221
    .local v27, "propElement":Lorg/w3c/dom/Element;
    const/16 v29, 0x0

    .line 222
    .local v29, "queryElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->CONTENT_TYPE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_6

    .line 223
    const-string v40, "DAV:"

    const-string v41, "d:getcontenttype"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v29

    .line 233
    :cond_1
    :goto_1
    const-string v40, "DAV:"

    const-string v41, "d:literal"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    .line 235
    .local v22, "literalElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_MODIFIED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_ADDED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_a

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FILE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_2

    .line 237
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "%"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "%"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 239
    :cond_2
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v23

    .line 254
    .local v23, "literalTextElement":Lorg/w3c/dom/Text;
    :goto_2
    const-string v40, "DAV:"

    const-string v41, "d:orderby"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    .line 270
    .local v24, "orderByElement":Lorg/w3c/dom/Element;
    const-string v40, "xmlns:oc"

    const-string v41, "http://nextcloud.com/ns"

    move-object/from16 v0, v35

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 272
    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 273
    move-object/from16 v0, v36

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 274
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 275
    move-object/from16 v0, v39

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 276
    invoke-interface/range {v36 .. v37}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 277
    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 278
    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 279
    move-object/from16 v0, v34

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 280
    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 281
    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 282
    move-object/from16 v0, v39

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 283
    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 284
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 285
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 286
    invoke-interface/range {v22 .. v23}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 287
    move-object/from16 v0, v24

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 289
    .end local v3    # "basicSearchElement":Lorg/w3c/dom/Element;
    .end local v5    # "contentLengthElement":Lorg/w3c/dom/Element;
    .end local v6    # "contentTypeElement":Lorg/w3c/dom/Element;
    .end local v7    # "creationDate":Lorg/w3c/dom/Element;
    .end local v10    # "depthElement":Lorg/w3c/dom/Element;
    .end local v11    # "depthTextElement":Lorg/w3c/dom/Text;
    .end local v12    # "displayNameElement":Lorg/w3c/dom/Element;
    .end local v13    # "equalsElement":Lorg/w3c/dom/Element;
    .end local v14    # "etagElement":Lorg/w3c/dom/Element;
    .end local v15    # "favoriteElement":Lorg/w3c/dom/Element;
    .end local v17    # "fromElement":Lorg/w3c/dom/Element;
    .end local v18    # "hrefElement":Lorg/w3c/dom/Element;
    .end local v19    # "hrefTextElement":Lorg/w3c/dom/Text;
    .end local v21    # "lastModifiedElement":Lorg/w3c/dom/Element;
    .end local v22    # "literalElement":Lorg/w3c/dom/Element;
    .end local v23    # "literalTextElement":Lorg/w3c/dom/Text;
    .end local v24    # "orderByElement":Lorg/w3c/dom/Element;
    .end local v26    # "permissionsElement":Lorg/w3c/dom/Element;
    .end local v27    # "propElement":Lorg/w3c/dom/Element;
    .end local v28    # "query":Lorg/w3c/dom/Document;
    .end local v29    # "queryElement":Lorg/w3c/dom/Element;
    .end local v30    # "quotaAvailableElement":Lorg/w3c/dom/Element;
    .end local v31    # "quotaUsedElement":Lorg/w3c/dom/Element;
    .end local v32    # "remoteIdElement":Lorg/w3c/dom/Element;
    .end local v33    # "resourceTypeElement":Lorg/w3c/dom/Element;
    .end local v34    # "scopeElement":Lorg/w3c/dom/Element;
    .end local v35    # "searchRequestElement":Lorg/w3c/dom/Element;
    .end local v36    # "selectElement":Lorg/w3c/dom/Element;
    .end local v37    # "selectPropsElement":Lorg/w3c/dom/Element;
    .end local v38    # "sizeElement":Lorg/w3c/dom/Element;
    .end local v39    # "whereElement":Lorg/w3c/dom/Element;
    :goto_3
    return-object v28

    .line 165
    :catch_0
    move-exception v25

    .line 166
    .local v25, "parserError":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v40, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ParserConfigurationException: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v25 .. v25}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    const/16 v28, 0x0

    goto :goto_3

    .line 214
    .end local v25    # "parserError":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v3    # "basicSearchElement":Lorg/w3c/dom/Element;
    .restart local v5    # "contentLengthElement":Lorg/w3c/dom/Element;
    .restart local v6    # "contentTypeElement":Lorg/w3c/dom/Element;
    .restart local v7    # "creationDate":Lorg/w3c/dom/Element;
    .restart local v10    # "depthElement":Lorg/w3c/dom/Element;
    .restart local v11    # "depthTextElement":Lorg/w3c/dom/Text;
    .restart local v12    # "displayNameElement":Lorg/w3c/dom/Element;
    .restart local v14    # "etagElement":Lorg/w3c/dom/Element;
    .restart local v15    # "favoriteElement":Lorg/w3c/dom/Element;
    .restart local v17    # "fromElement":Lorg/w3c/dom/Element;
    .restart local v18    # "hrefElement":Lorg/w3c/dom/Element;
    .restart local v19    # "hrefTextElement":Lorg/w3c/dom/Text;
    .restart local v21    # "lastModifiedElement":Lorg/w3c/dom/Element;
    .restart local v26    # "permissionsElement":Lorg/w3c/dom/Element;
    .restart local v28    # "query":Lorg/w3c/dom/Document;
    .restart local v30    # "quotaAvailableElement":Lorg/w3c/dom/Element;
    .restart local v31    # "quotaUsedElement":Lorg/w3c/dom/Element;
    .restart local v32    # "remoteIdElement":Lorg/w3c/dom/Element;
    .restart local v33    # "resourceTypeElement":Lorg/w3c/dom/Element;
    .restart local v34    # "scopeElement":Lorg/w3c/dom/Element;
    .restart local v35    # "searchRequestElement":Lorg/w3c/dom/Element;
    .restart local v36    # "selectElement":Lorg/w3c/dom/Element;
    .restart local v37    # "selectPropsElement":Lorg/w3c/dom/Element;
    .restart local v38    # "sizeElement":Lorg/w3c/dom/Element;
    .restart local v39    # "whereElement":Lorg/w3c/dom/Element;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_MODIFIED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_ADDED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_5

    .line 216
    :cond_4
    const-string v40, "DAV:"

    const-string v41, "d:gt"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .restart local v13    # "equalsElement":Lorg/w3c/dom/Element;
    goto/16 :goto_0

    .line 218
    .end local v13    # "equalsElement":Lorg/w3c/dom/Element;
    :cond_5
    const-string v40, "DAV:"

    const-string v41, "d:like"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .restart local v13    # "equalsElement":Lorg/w3c/dom/Element;
    goto/16 :goto_0

    .line 224
    .restart local v27    # "propElement":Lorg/w3c/dom/Element;
    .restart local v29    # "queryElement":Lorg/w3c/dom/Element;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FILE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_7

    .line 225
    const-string v40, "DAV:"

    const-string v41, "d:displayname"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v29

    goto/16 :goto_1

    .line 226
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->FAVORITE_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_8

    .line 227
    const-string v40, "http://owncloud.org/ns"

    const-string v41, "oc:favorite"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v29

    goto/16 :goto_1

    .line 228
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_MODIFIED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_9

    .line 229
    const-string v40, "DAV:"

    const-string v41, "d:getlastmodified"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v29

    goto/16 :goto_1

    .line 230
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/owncloud/android/lib/resources/files/SearchOperation;->searchType:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v40, v0

    sget-object v41, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;->RECENTLY_ADDED_SEARCH:Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchType;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    if-ne v0, v1, :cond_1

    .line 231
    const-string v40, "DAV:"

    const-string v41, "d:creationdate"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v29

    goto/16 :goto_1

    .line 241
    .restart local v22    # "literalElement":Lorg/w3c/dom/Element;
    :cond_a
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v40, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-direct {v9, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 242
    .local v9, "dateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 243
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 245
    .local v8, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 246
    .local v4, "calendar":Ljava/util/Calendar;
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 247
    const/16 v40, 0x6

    const/16 v41, -0x7

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 248
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 250
    invoke-virtual {v9, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 251
    .local v16, "formattedDateString":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v23

    .restart local v23    # "literalTextElement":Lorg/w3c/dom/Text;
    goto/16 :goto_2
.end method


# virtual methods
.method protected run(Lcom/owncloud/android/lib/common/OwnCloudClient;)Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .locals 21
    .param p1, "client"    # Lcom/owncloud/android/lib/common/OwnCloudClient;

    .prologue
    .line 77
    const/4 v15, 0x0

    .line 78
    .local v15, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    const/16 v17, 0x0

    .line 79
    .local v17, "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    const/4 v13, 0x0

    .line 81
    .local v13, "optionsMethod":Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getNewWebdavUri(Z)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    .line 82
    .local v20, "webDavUrl":Ljava/lang/String;
    new-instance v13, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;

    .end local v13    # "optionsMethod":Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;
    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v13    # "optionsMethod":Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v14

    .line 86
    .local v14, "optionsStatus":I
    const-string v5, "SEARCH"

    invoke-virtual {v13, v5}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->isAllowed(Ljava/lang/String;)Z

    move-result v10

    .line 87
    .local v10, "isSearchSupported":Z
    if-eqz v10, :cond_6

    .line 89
    new-instance v18, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;

    new-instance v5, Lorg/apache/jackrabbit/webdav/search/SearchInfo;

    const-string v6, "NC"

    sget-object v7, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XMLNS_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    const-string v8, "NC"

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/jackrabbit/webdav/search/SearchInfo;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;-><init>(Lcom/owncloud/android/lib/resources/files/SearchOperation;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/search/SearchInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .local v18, "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)I

    move-result v19

    .line 95
    .local v19, "status":I
    const/16 v5, 0xcf

    move/from16 v0, v19

    if-eq v0, v5, :cond_0

    const/16 v5, 0xc8

    move/from16 v0, v19

    if-ne v0, v5, :cond_4

    :cond_0
    const/4 v11, 0x1

    .line 99
    .local v11, "isSuccess":Z
    :goto_0
    if-eqz v11, :cond_5

    .line 101
    invoke-virtual/range {v18 .. v18}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->getResponseBodyAsMultiStatus()Lorg/apache/jackrabbit/webdav/MultiStatus;

    move-result-object v4

    .line 102
    .local v4, "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    new-instance v3, Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;

    invoke-direct {v3}, Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;-><init>()V

    .line 103
    .local v3, "webDavFileUtils":Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/owncloud/android/lib/common/OwnCloudClient;->getCredentials()Lcom/owncloud/android/lib/common/OwnCloudCredentials;

    move-result-object v5

    invoke-interface {v5}, Lcom/owncloud/android/lib/common/OwnCloudCredentials;->getUsername()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    .line 103
    invoke-virtual/range {v3 .. v8}, Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;->readData(Lorg/apache/jackrabbit/webdav/MultiStatus;Lcom/owncloud/android/lib/common/OwnCloudClient;ZZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 107
    .local v12, "mFolderAndFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v16, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v5, 0x1

    invoke-virtual/range {v18 .. v18}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v6

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v5, v1, v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v16, "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;->setData(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    move-object/from16 v15, v16

    .end local v3    # "webDavFileUtils":Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;
    .end local v4    # "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .end local v12    # "mFolderAndFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_1
    move-object/from16 v17, v18

    .line 125
    .end local v11    # "isSuccess":Z
    .end local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .end local v19    # "status":I
    .restart local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    :goto_2
    if-eqz v17, :cond_2

    .line 126
    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->releaseConnection()V

    .line 129
    :cond_2
    if-eqz v13, :cond_3

    .line 130
    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->releaseConnection()V

    .line 133
    .end local v10    # "isSearchSupported":Z
    .end local v14    # "optionsStatus":I
    :cond_3
    :goto_3
    return-object v15

    .line 95
    .end local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v10    # "isSearchSupported":Z
    .restart local v14    # "optionsStatus":I
    .restart local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v19    # "status":I
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 114
    .restart local v11    # "isSuccess":Z
    :cond_5
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 115
    new-instance v16, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v5, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v6

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v5, v1, v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object/from16 v15, v16

    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_1

    .line 118
    .end local v11    # "isSuccess":Z
    .end local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .end local v19    # "status":I
    .restart local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    :cond_6
    :try_start_4
    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/owncloud/android/lib/common/OwnCloudClient;->exhaustResponse(Ljava/io/InputStream;)V

    .line 119
    new-instance v16, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    const/4 v5, 0x0

    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->getResponseHeaders()[Lorg/apache/commons/httpclient/Header;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v14, v6}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(ZI[Lorg/apache/commons/httpclient/Header;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    move-object/from16 v15, v16

    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_2

    .line 122
    .end local v10    # "isSearchSupported":Z
    .end local v14    # "optionsStatus":I
    :catch_0
    move-exception v9

    move-object/from16 v16, v15

    .line 123
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :goto_4
    :try_start_5
    new-instance v15, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;

    invoke-direct {v15, v9}, Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;-><init>(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 125
    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    if-eqz v17, :cond_7

    .line 126
    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->releaseConnection()V

    .line 129
    :cond_7
    if-eqz v13, :cond_3

    .line 130
    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->releaseConnection()V

    goto :goto_3

    .line 125
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v17, :cond_8

    .line 126
    invoke-virtual/range {v17 .. v17}, Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;->releaseConnection()V

    .line 129
    :cond_8
    if-eqz v13, :cond_9

    .line 130
    invoke-virtual {v13}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->releaseConnection()V

    :cond_9
    throw v5

    .line 125
    .end local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v10    # "isSearchSupported":Z
    .restart local v14    # "optionsStatus":I
    .restart local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    :catchall_1
    move-exception v5

    move-object/from16 v17, v18

    .end local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    goto :goto_5

    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v3    # "webDavFileUtils":Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;
    .restart local v4    # "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .restart local v11    # "isSuccess":Z
    .restart local v12    # "mFolderAndFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v19    # "status":I
    :catchall_2
    move-exception v5

    move-object/from16 v17, v18

    .end local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    move-object/from16 v15, v16

    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_5

    .end local v3    # "webDavFileUtils":Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;
    .end local v4    # "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .end local v10    # "isSearchSupported":Z
    .end local v11    # "isSuccess":Z
    .end local v12    # "mFolderAndFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v14    # "optionsStatus":I
    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .end local v19    # "status":I
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    :catchall_3
    move-exception v5

    move-object/from16 v15, v16

    .end local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_5

    .line 122
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v10    # "isSearchSupported":Z
    .restart local v14    # "optionsStatus":I
    .restart local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    :catch_1
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    move-object/from16 v16, v15

    .end local v15    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    .restart local v16    # "result":Lcom/owncloud/android/lib/common/operations/RemoteOperationResult;
    goto :goto_4

    .end local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v3    # "webDavFileUtils":Lcom/owncloud/android/lib/common/utils/WebDavFileUtils;
    .restart local v4    # "dataInServer":Lorg/apache/jackrabbit/webdav/MultiStatus;
    .restart local v11    # "isSuccess":Z
    .restart local v12    # "mFolderAndFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v19    # "status":I
    :catch_2
    move-exception v9

    move-object/from16 v17, v18

    .end local v18    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    .restart local v17    # "searchMethod":Lcom/owncloud/android/lib/resources/files/SearchOperation$SearchMethod;
    goto :goto_4
.end method
