.class Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;
.super Landroid/support/v4/widget/SimpleCursorAdapter;
.source "BookManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/gnucash/android/ui/settings/BookManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BooksCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/settings/BookManagerFragment;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 158
    iput-object p1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;

    .line 159
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->handleMenuRenameBook(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->handleMenuDeleteBook(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private handleMenuDeleteBook(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p1}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;->newInstance(Ljava/lang/String;)Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;

    move-result-object v0

    .line 222
    .local v0, "dialog":Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;

    invoke-virtual {v1}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "delete_book"

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/gnucash/android/ui/settings/dialog/DeleteBookConfirmationDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 224
    const/4 v1, 0x1

    return v1
.end method

.method private handleMenuRenameBook(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "bookName"    # Ljava/lang/String;
    .param p2, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;

    invoke-virtual {v2}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "dialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f0f01d4

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b004a

    .line 236
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f0033

    new-instance v4, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$4;

    invoke-direct {v4, p0, p2}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$4;-><init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f002d

    new-instance v4, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$3;

    invoke-direct {v4, p0}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$3;-><init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;)V

    .line 248
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 254
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 255
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 256
    const v2, 0x7f0900ee

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    const/4 v2, 0x1

    return v2
.end method

.method private setLastExportedText(Landroid/view/View;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 261
    const v3, 0x7f090117

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 262
    .local v0, "labelLastSync":Landroid/widget/TextView;
    const v3, 0x7f0f00e7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 264
    invoke-static {p2}, Lorg/gnucash/android/util/PreferencesHelper;->getLastExportTime(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v2

    .line 265
    .local v2, "lastSyncTime":Ljava/sql/Timestamp;
    const v3, 0x7f090120

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 266
    .local v1, "lastSyncText":Landroid/widget/TextView;
    new-instance v3, Ljava/sql/Timestamp;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    const v3, 0x7f0f0112

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setStatisticsText(Landroid/view/View;Ljava/lang/String;)V
    .locals 17
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v6, Lorg/gnucash/android/db/DatabaseHelper;

    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-direct {v6, v12, v0}, Lorg/gnucash/android/db/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    .local v6, "dbHelper":Lorg/gnucash/android/db/DatabaseHelper;
    invoke-virtual {v6}, Lorg/gnucash/android/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 275
    .local v5, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v11, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;

    new-instance v12, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;

    invoke-direct {v12, v5}, Lorg/gnucash/android/db/adapter/SplitsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v11, v5, v12}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/SplitsDbAdapter;)V

    .line 276
    .local v11, "trnAdapter":Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;
    invoke-virtual {v11}, Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;->getRecordsCount()J

    move-result-wide v12

    long-to-int v9, v12

    .line 277
    .local v9, "transactionCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;

    invoke-virtual {v12}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d0001

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v9, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 279
    .local v10, "transactionStats":Ljava/lang/String;
    new-instance v4, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-direct {v4, v5, v11}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lorg/gnucash/android/db/adapter/TransactionsDbAdapter;)V

    .line 280
    .local v4, "accountsDbAdapter":Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    invoke-virtual {v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getRecordsCount()J

    move-result-wide v12

    long-to-int v3, v12

    .line 281
    .local v3, "accountsCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;

    invoke-virtual {v12}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f0d0000

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v3, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "accountStats":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 283
    .local v7, "stats":Ljava/lang/String;
    const v12, 0x7f0901b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 284
    .local v8, "statsText":Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 287
    const v12, 0x7f090184

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->this$0:Lorg/gnucash/android/ui/settings/BookManagerFragment;

    .line 288
    invoke-virtual {v13}, Lorg/gnucash/android/ui/settings/BookManagerFragment;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f0600bd

    invoke-static {v13, v14}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    :cond_0
    return-void
.end method

.method private setUpMenu(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "bookUID"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v2, "name"

    .line 185
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 184
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "bookName":Ljava/lang/String;
    const v2, 0x7f090170

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 187
    .local v1, "optionsMenu":Landroid/widget/ImageView;
    new-instance v2, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;

    invoke-direct {v2, p0, p2, v0, p4}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$2;-><init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 166
    const-string v1, "uid"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "bookUID":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->setLastExportedText(Landroid/view/View;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p1, v0}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->setStatisticsText(Landroid/view/View;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;->setUpMenu(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$1;

    invoke-direct {v1, p0, v0}, Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter$1;-><init>(Lorg/gnucash/android/ui/settings/BookManagerFragment$BooksCursorAdapter;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method
