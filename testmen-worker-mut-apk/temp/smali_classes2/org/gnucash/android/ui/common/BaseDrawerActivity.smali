.class public abstract Lorg/gnucash/android/ui/common/BaseDrawerActivity;
.super Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;
.source "BaseDrawerActivity.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gnucash/android/ui/common/BaseDrawerActivity$DrawerItemClickListener;
    }
.end annotation


# static fields
.field public static final ID_MANAGE_BOOKS:I = 0xb00c

.field public static final REQUEST_OPEN_DOCUMENT:I = 0x20


# instance fields
.field protected mBookNameTextView:Landroid/widget/TextView;

.field mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09009a
    .end annotation
.end field

.field protected mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field mNavigationView:Landroid/support/design/widget/NavigationView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09015e
    .end annotation
.end field

.field mToolbar:Landroid/support/v7/widget/Toolbar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090206
    .end annotation
.end field

.field mToolbarProgress:Landroid/widget/ProgressBar;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090208
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;-><init>()V

    return-void
.end method

.method private setUpNavigationDrawer()V
    .locals 6

    .prologue
    .line 175
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    new-instance v1, Lorg/gnucash/android/ui/common/BaseDrawerActivity$DrawerItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/gnucash/android/ui/common/BaseDrawerActivity$DrawerItemClickListener;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Lorg/gnucash/android/ui/common/BaseDrawerActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 177
    new-instance v0, Lorg/gnucash/android/ui/common/BaseDrawerActivity$3;

    iget-object v3, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f0f0074

    const v5, 0x7f0f0073

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/gnucash/android/ui/common/BaseDrawerActivity$3;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 195
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 196
    return-void
.end method


# virtual methods
.method public abstract getContentView()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mToolbarProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public abstract getTitleRes()I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 294
    if-nez p2, :cond_0

    .line 295
    invoke-super {p0, p1, p2, p3}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 313
    :goto_0
    return-void

    .line 299
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 310
    invoke-super {p0, p1, p2, p3}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 301
    :sswitch_0
    invoke-static {p0, p3, v2}, Lorg/gnucash/android/ui/account/AccountsActivity;->importXmlFileFromIntent(Landroid/app/Activity;Landroid/content/Intent;Lorg/gnucash/android/ui/util/TaskDelegate;)V

    goto :goto_0

    .line 304
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v0, v1, 0x3

    .line 306
    .local v0, "takeFlags":I
    invoke-static {p0, p3, v2}, Lorg/gnucash/android/ui/account/AccountsActivity;->importXmlFileFromIntent(Landroid/app/Activity;Landroid/content/Intent;Lorg/gnucash/android/ui/util/TaskDelegate;)V

    .line 307
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 299
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClickAppTitle(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 337
    invoke-static {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->start(Landroid/content/Context;)V

    .line 338
    return-void
.end method

.method public onClickBook(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 341
    new-instance v7, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v7, p0, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 342
    .local v7, "popup":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v7, p0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 344
    invoke-virtual {v7}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    .line 345
    .local v5, "menu":Landroid/view/Menu;
    const/4 v1, 0x0

    .line 346
    .local v1, "maxRecent":I
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v8

    const-string v9, "modified_at DESC"

    invoke-virtual {v8, v11, v11, v9}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->fetchAllRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 348
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "maxRecent":I
    .local v4, "maxRecent":I
    const/4 v8, 0x5

    if-ge v1, v8, :cond_0

    .line 349
    const-string v8, "_id"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 350
    .local v2, "id":J
    const-string v8, "name"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 351
    .local v6, "name":Ljava/lang/String;
    long-to-int v8, v2

    invoke-interface {v5, v10, v8, v4, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move v1, v4

    .line 352
    .end local v4    # "maxRecent":I
    .restart local v1    # "maxRecent":I
    goto :goto_0

    .end local v1    # "maxRecent":I
    .end local v2    # "id":J
    .end local v6    # "name":Ljava/lang/String;
    .restart local v4    # "maxRecent":I
    :cond_0
    move v1, v4

    .line 353
    .end local v4    # "maxRecent":I
    .restart local v1    # "maxRecent":I
    :cond_1
    const v8, 0xb00c

    const v9, 0x7f0f011d

    invoke-interface {v5, v10, v8, v1, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 355
    invoke-virtual {v7}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 356
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 206
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 102
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->getContentView()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->setContentView(I)V

    .line 106
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "book_uid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "bookUID":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    invoke-static {v1}, Lorg/gnucash/android/util/BookUtils;->activateBook(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 112
    iget-object v3, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v3}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 113
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 114
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 116
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 117
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->getTitleRes()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 120
    :cond_1
    iget-object v3, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mToolbarProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 122
    iget-object v3, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/design/widget/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, "headerView":Landroid/view/View;
    const v3, 0x7f09009b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/gnucash/android/ui/common/BaseDrawerActivity$1;

    invoke-direct {v4, p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity$1;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mBookNameTextView:Landroid/widget/TextView;

    .line 131
    iget-object v3, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mBookNameTextView:Landroid/widget/TextView;

    new-instance v4, Lorg/gnucash/android/ui/common/BaseDrawerActivity$2;

    invoke-direct {v4, p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity$2;-><init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->updateActiveBookName()V

    .line 138
    invoke-direct {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->setUpNavigationDrawer()V

    .line 139
    return-void
.end method

.method protected onDrawerMenuItemClicked(I)V
    .locals 8
    .param p1, "itemId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/high16 v5, 0x24000000

    .line 234
    packed-switch p1, :pswitch_data_0

    .line 289
    :goto_0
    iget-object v4, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v5, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 290
    return-void

    .line 237
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, "openDocument":Landroid/content/Intent;
    const-string v4, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v4, "text/*|application/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    new-array v1, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "text/*"

    aput-object v5, v1, v4

    const-string v4, "application/*"

    aput-object v4, v1, v6

    .line 241
    .local v1, "mimeTypes":[Ljava/lang/String;
    const-string v4, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const/16 v4, 0x20

    invoke-virtual {p0, v2, v4}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 247
    .end local v1    # "mimeTypes":[Ljava/lang/String;
    .end local v2    # "openDocument":Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lorg/gnucash/android/ui/account/AccountsActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "org.gnucash.android.extra.TAB_INDEX"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lorg/gnucash/android/ui/report/ReportsActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lorg/gnucash/android/ui/transaction/ScheduledActionsActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_4
    invoke-static {p0}, Lorg/gnucash/android/ui/account/AccountsActivity;->openExportFragment(Landroid/support/v7/app/AppCompatActivity;)V

    goto :goto_0

    .line 280
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/gnucash/android/ui/settings/PreferenceActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 284
    :pswitch_6
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 285
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "skip_passcode_screen"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 286
    invoke-static {p0}, Lcom/uservoice/uservoicesdk/UserVoice;->launchUserVoice(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x7f090154
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    int-to-long v2, v5

    .line 318
    .local v2, "id":J
    const-wide/32 v6, 0xb00c

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 319
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lorg/gnucash/android/ui/settings/PreferenceActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "org.gnucash.android.intent.action.MANAGE_BOOKS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v4}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->startActivity(Landroid/content/Intent;)V

    .line 322
    iget-object v5, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v6, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 332
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    return v8

    .line 325
    :cond_0
    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v1

    .line 326
    .local v1, "booksDbAdapter":Lorg/gnucash/android/db/adapter/BooksDbAdapter;
    invoke-virtual {v1, v2, v3}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "bookUID":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 328
    invoke-static {v0}, Lorg/gnucash/android/util/BookUtils;->loadBook(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->finish()V

    .line 331
    :cond_1
    invoke-static {}, Lorg/gnucash/android/app/GnuCashApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/gnucash/android/ui/account/AccountsActivity;->start(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 217
    :goto_0
    const/4 v0, 0x1

    .line 220
    :goto_1
    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 201
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 202
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lorg/gnucash/android/ui/passcode/PasscodeLockActivity;->onResume()V

    .line 144
    invoke-virtual {p0}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->updateActiveBookName()V

    .line 145
    return-void
.end method

.method protected updateActiveBookName()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->mBookNameTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/BooksDbAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/gnucash/android/db/adapter/BooksDbAdapter;->getActiveBookDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method
