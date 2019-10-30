.class public Lorg/gnucash/android/model/Account;
.super Lorg/gnucash/android/model/BaseModel;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/model/Account$OfxAccountType;
    }
.end annotation


# static fields
.field public static final DEFAULT_COLOR:I = -0x333334

.field public static final EXTRA_CURRENCY_CODE:Ljava/lang/String; = "org.gnucash.android.extra.currency_code"

.field public static final EXTRA_PARENT_UID:Ljava/lang/String; = "org.gnucash.android.extra.parent_uid"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.org.gnucash.android.account"


# instance fields
.field private mAccountType:Lorg/gnucash/android/model/AccountType;

.field private mColor:I

.field private mCommodity:Lorg/gnucash/android/model/Commodity;

.field private mDefaultTransferAccountUID:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mIsFavorite:Z

.field private mIsHidden:Z

.field private mIsPlaceholderAccount:Z

.field private mName:Ljava/lang/String;

.field private mParentAccountUID:Ljava/lang/String;

.field private mTransactionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mDescription:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/gnucash/android/model/AccountType;->CASH:Lorg/gnucash/android/model/AccountType;

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mTransactionsList:Ljava/util/List;

    .line 117
    const v0, -0x333334

    iput v0, p0, Lorg/gnucash/android/model/Account;->mColor:I

    .line 146
    invoke-virtual {p0, p1}, Lorg/gnucash/android/model/Account;->setName(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mName:Ljava/lang/String;

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mFullName:Ljava/lang/String;

    .line 148
    sget-object v0, Lorg/gnucash/android/model/Commodity;->DEFAULT_COMMODITY:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/Account;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/gnucash/android/model/Commodity;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "commodity"    # Lorg/gnucash/android/model/Commodity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/gnucash/android/model/BaseModel;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mDescription:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/gnucash/android/model/AccountType;->CASH:Lorg/gnucash/android/model/AccountType;

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mTransactionsList:Ljava/util/List;

    .line 117
    const v0, -0x333334

    iput v0, p0, Lorg/gnucash/android/model/Account;->mColor:I

    .line 157
    invoke-virtual {p0, p1}, Lorg/gnucash/android/model/Account;->setName(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mName:Ljava/lang/String;

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mFullName:Ljava/lang/String;

    .line 159
    invoke-virtual {p0, p2}, Lorg/gnucash/android/model/Account;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 160
    return-void
.end method

.method public static convertToOfxAccountType(Lorg/gnucash/android/model/AccountType;)Lorg/gnucash/android/model/Account$OfxAccountType;
    .locals 2
    .param p0, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 426
    sget-object v0, Lorg/gnucash/android/model/Account$1;->$SwitchMap$org$gnucash$android$model$AccountType:[I

    invoke-virtual {p0}, Lorg/gnucash/android/model/AccountType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 449
    sget-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->CHECKING:Lorg/gnucash/android/model/Account$OfxAccountType;

    :goto_0
    return-object v0

    .line 429
    :pswitch_0
    sget-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->CREDITLINE:Lorg/gnucash/android/model/Account$OfxAccountType;

    goto :goto_0

    .line 436
    :pswitch_1
    sget-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->CHECKING:Lorg/gnucash/android/model/Account$OfxAccountType;

    goto :goto_0

    .line 440
    :pswitch_2
    sget-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->SAVINGS:Lorg/gnucash/android/model/Account$OfxAccountType;

    goto :goto_0

    .line 446
    :pswitch_3
    sget-object v0, Lorg/gnucash/android/model/Account$OfxAccountType;->MONEYMRKT:Lorg/gnucash/android/model/Account$OfxAccountType;

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addTransaction(Lorg/gnucash/android/model/Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lorg/gnucash/android/model/Transaction;

    .prologue
    .line 233
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {p1, v0}, Lorg/gnucash/android/model/Transaction;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 234
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mTransactionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public getAccountType()Lorg/gnucash/android/model/AccountType;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mAccountType:Lorg/gnucash/android/model/AccountType;

    return-object v0
.end method

.method public getBalance()Lorg/gnucash/android/model/Money;
    .locals 4

    .prologue
    .line 270
    iget-object v2, p0, Lorg/gnucash/android/model/Account;->mCommodity:Lorg/gnucash/android/model/Commodity;

    invoke-virtual {v2}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/gnucash/android/model/Money;->createZeroInstance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 271
    .local v0, "balance":Lorg/gnucash/android/model/Money;
    iget-object v2, p0, Lorg/gnucash/android/model/Account;->mTransactionsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gnucash/android/model/Transaction;

    .line 272
    .local v1, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual {p0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/gnucash/android/model/Transaction;->getBalance(Ljava/lang/String;)Lorg/gnucash/android/model/Money;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/gnucash/android/model/Money;->add(Lorg/gnucash/android/model/Money;)Lorg/gnucash/android/model/Money;

    move-result-object v0

    .line 273
    goto :goto_0

    .line 274
    .end local v1    # "transaction":Lorg/gnucash/android/model/Transaction;
    :cond_0
    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/gnucash/android/model/Account;->mColor:I

    return v0
.end method

.method public getColorHexString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 290
    const-string v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0xffffff

    iget v4, p0, Lorg/gnucash/android/model/Account;->mColor:I

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommodity()Lorg/gnucash/android/model/Commodity;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mCommodity:Lorg/gnucash/android/model/Commodity;

    return-object v0
.end method

.method public getDefaultTransferAccountUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mDefaultTransferAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mParentAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionCount()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mTransactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/gnucash/android/model/Account;->mTransactionsList:Ljava/util/List;

    return-object v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/gnucash/android/model/Account;->mIsFavorite:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lorg/gnucash/android/model/Account;->mIsHidden:Z

    return v0
.end method

.method public isPlaceholderAccount()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lorg/gnucash/android/model/Account;->mIsPlaceholderAccount:Z

    return v0
.end method

.method public setAccountType(Lorg/gnucash/android/model/AccountType;)V
    .locals 0
    .param p1, "mAccountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 225
    iput-object p1, p0, Lorg/gnucash/android/model/Account;->mAccountType:Lorg/gnucash/android/model/AccountType;

    .line 226
    return-void
.end method

.method public setColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 300
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transparent colors are not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    iput p1, p0, Lorg/gnucash/android/model/Account;->mColor:I

    .line 303
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "colorCode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 313
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/gnucash/android/model/Account;->setColor(I)V

    .line 314
    return-void
.end method

.method public setCommodity(Lorg/gnucash/android/model/Commodity;)V
    .locals 0
    .param p1, "commodity"    # Lorg/gnucash/android/model/Commodity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 345
    iput-object p1, p0, Lorg/gnucash/android/model/Account;->mCommodity:Lorg/gnucash/android/model/Commodity;

    .line 347
    return-void
.end method

.method public setDefaultTransferAccountUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultTransferAccountUID"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/gnucash/android/model/Account;->mDefaultTransferAccountUID:Ljava/lang/String;

    .line 414
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 208
    iput-object p1, p0, Lorg/gnucash/android/model/Account;->mDescription:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setFavorite(Z)V
    .locals 0
    .param p1, "isFavorite"    # Z

    .prologue
    .line 329
    iput-boolean p1, p0, Lorg/gnucash/android/model/Account;->mIsFavorite:Z

    .line 330
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lorg/gnucash/android/model/Account;->mFullName:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setHidden(Z)V
    .locals 0
    .param p1, "hidden"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lorg/gnucash/android/model/Account;->mIsHidden:Z

    .line 389
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/gnucash/android/model/Account;->mName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setParentUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentUID"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lorg/gnucash/android/model/Account;->mParentAccountUID:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setPlaceHolderFlag(Z)V
    .locals 0
    .param p1, "isPlaceholder"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Lorg/gnucash/android/model/Account;->mIsPlaceholderAccount:Z

    .line 398
    return-void
.end method

.method public setTransactions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/gnucash/android/model/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "transactionsList":Ljava/util/List;, "Ljava/util/List<Lorg/gnucash/android/model/Transaction;>;"
    iput-object p1, p0, Lorg/gnucash/android/model/Account;->mTransactionsList:Ljava/util/List;

    .line 246
    return-void
.end method

.method public toOfx(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;Ljava/sql/Timestamp;)V
    .locals 21
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "parent"    # Lorg/w3c/dom/Element;
    .param p3, "exportStartTime"    # Ljava/sql/Timestamp;

    .prologue
    .line 460
    const-string v19, "CURDEF"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 461
    .local v10, "currency":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Account;->mCommodity:Lorg/gnucash/android/model/Commodity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 465
    const-string v19, "BANKID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    .line 466
    .local v8, "bankId":Lorg/w3c/dom/Element;
    sget-object v19, Lorg/gnucash/android/export/ofx/OfxHelper;->APP_ID:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 468
    const-string v19, "ACCTID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 469
    .local v3, "acctId":Lorg/w3c/dom/Element;
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 471
    const-string v19, "ACCTTYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 472
    .local v4, "accttype":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Account;->mAccountType:Lorg/gnucash/android/model/AccountType;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/gnucash/android/model/Account;->convertToOfxAccountType(Lorg/gnucash/android/model/AccountType;)Lorg/gnucash/android/model/Account$OfxAccountType;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/gnucash/android/model/Account$OfxAccountType;->toString()Ljava/lang/String;

    move-result-object v16

    .line 473
    .local v16, "ofxAccountType":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 475
    const-string v19, "BANKACCTFROM"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 476
    .local v7, "bankFrom":Lorg/w3c/dom/Element;
    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 477
    invoke-interface {v7, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 478
    invoke-interface {v7, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 484
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/Account;->getBalance()Lorg/gnucash/android/model/Money;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/gnucash/android/model/Money;->toPlainString()Ljava/lang/String;

    move-result-object v5

    .line 485
    .local v5, "balance":Ljava/lang/String;
    invoke-static {}, Lorg/gnucash/android/export/ofx/OfxHelper;->getFormattedCurrentTime()Ljava/lang/String;

    move-result-object v14

    .line 487
    .local v14, "formattedCurrentTimeString":Ljava/lang/String;
    const-string v19, "BALAMT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 488
    .local v6, "balanceAmount":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 489
    const-string v19, "DTASOF"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 490
    .local v11, "dtasof":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 492
    const-string v19, "LEDGERBAL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 493
    .local v15, "ledgerBalance":Lorg/w3c/dom/Element;
    invoke-interface {v15, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 494
    invoke-interface {v15, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 501
    const-string v19, "DTSTART"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 502
    .local v13, "dtstart":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 504
    const-string v19, "DTEND"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 505
    .local v12, "dtend":Lorg/w3c/dom/Element;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 511
    const-string v19, "BANKTRANLIST"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 512
    .local v9, "bankTransactionsList":Lorg/w3c/dom/Element;
    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 513
    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/model/Account;->mTransactionsList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/gnucash/android/model/Transaction;

    .line 516
    .local v18, "transaction":Lorg/gnucash/android/model/Transaction;
    invoke-virtual/range {v18 .. v18}, Lorg/gnucash/android/model/Transaction;->getModifiedTimestamp()Ljava/sql/Timestamp;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/sql/Timestamp;->before(Ljava/sql/Timestamp;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 518
    invoke-virtual/range {p0 .. p0}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/model/Transaction;->toOFX(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 522
    .end local v18    # "transaction":Lorg/gnucash/android/model/Transaction;
    :cond_1
    const-string v19, "STMTRS"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 523
    .local v17, "statementTransactions":Lorg/w3c/dom/Element;
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 524
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 525
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 526
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 528
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 530
    return-void
.end method
