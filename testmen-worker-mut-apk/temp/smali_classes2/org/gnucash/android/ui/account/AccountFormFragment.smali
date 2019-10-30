.class public Lorg/gnucash/android/ui/account/AccountFormFragment;
.super Landroid/support/v4/app/Fragment;
.source "AccountFormFragment.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COLOR_PICKER_DIALOG_TAG:Ljava/lang/String; = "color_picker_dialog"


# instance fields
.field private mAccount:Lorg/gnucash/android/model/Account;

.field mAccountTypeSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ec
    .end annotation
.end field

.field private mAccountUID:Ljava/lang/String;

.field private mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

.field private final mColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field mColorSquare:Lorg/gnucash/android/ui/colorpicker/ColorSquare;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f3
    .end annotation
.end field

.field mCurrencySpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f5
    .end annotation
.end field

.field mDefaultTransferAccountCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005e
    .end annotation
.end field

.field private mDefaultTransferAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field mDefaultTransferAccountSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900f7
    .end annotation
.end field

.field private mDescendantAccountUIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDescriptionEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900ea
    .end annotation
.end field

.field mNameEditText:Landroid/widget/EditText;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900eb
    .end annotation
.end field

.field private mParentAccountCursor:Landroid/database/Cursor;

.field private mParentAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field mParentAccountSpinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/BindView;
        value = 0x7f0900fb
    .end annotation
.end field

.field private mParentAccountUID:Ljava/lang/String;

.field mParentCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f09005f
    .end annotation
.end field

.field mPlaceholderCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090060
    .end annotation
.end field

.field private mRootAccountId:J

.field private mRootAccountUID:Ljava/lang/String;

.field private mSelectedColor:I

.field mTextInputLayout:Landroid/support/design/widget/TextInputLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f090153
    .end annotation
.end field

.field private mUseDoubleEntry:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 116
    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountId:J

    .line 126
    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountUID:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    .line 136
    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountUID:Ljava/lang/String;

    .line 202
    const v0, -0x333334

    iput v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mSelectedColor:I

    .line 209
    new-instance v0, Lorg/gnucash/android/ui/account/AccountFormFragment$1;

    invoke-direct {v0, p0}, Lorg/gnucash/android/ui/account/AccountFormFragment$1;-><init>(Lorg/gnucash/android/ui/account/AccountFormFragment;)V

    iput-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 225
    return-void
.end method

.method static synthetic access$002(Lorg/gnucash/android/ui/account/AccountFormFragment;I)I
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mSelectedColor:I

    return p1
.end method

.method static synthetic access$100(Lorg/gnucash/android/ui/account/AccountFormFragment;)Lorg/gnucash/android/model/AccountType;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getSelectedAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/gnucash/android/ui/account/AccountFormFragment;Lorg/gnucash/android/model/AccountType;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;
    .param p1, "x1"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->loadParentAccountList(Lorg/gnucash/android/model/AccountType;)V

    return-void
.end method

.method static synthetic access$300(Lorg/gnucash/android/ui/account/AccountFormFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/gnucash/android/ui/account/AccountFormFragment;)Lorg/gnucash/android/db/adapter/AccountsDbAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lorg/gnucash/android/ui/account/AccountFormFragment;J)V
    .locals 1
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;
    .param p1, "x1"    # J

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setParentAccountSelection(J)V

    return-void
.end method

.method static synthetic access$600(Lorg/gnucash/android/ui/account/AccountFormFragment;)V
    .locals 0
    .param p0, "x0"    # Lorg/gnucash/android/ui/account/AccountFormFragment;

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->showColorPickerDialog()V

    return-void
.end method

.method private finishFragment()V
    .locals 4

    .prologue
    .line 705
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 707
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 709
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 711
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 712
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method private getAccountColorOptions()[I
    .locals 7

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 520
    .local v4, "res":Landroid/content/res/Resources;
    const/high16 v5, 0x7f030000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 521
    .local v2, "colorTypedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    new-array v1, v5, [I

    .line 522
    .local v1, "colorOptions":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 523
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0600bf

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 525
    .local v0, "color":I
    aput v0, v1, v3

    .line 522
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 527
    .end local v0    # "color":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 528
    return-object v1
.end method

.method private getAccountTypeStringList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    invoke-static {}, Lorg/gnucash/android/model/AccountType;->values()[Lorg/gnucash/android/model/AccountType;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\[|]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "accountTypes":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .local v2, "accountTypesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 682
    .local v0, "accountType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "accountType":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getAllowedParentAccountTypes(Lorg/gnucash/android/model/AccountType;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 639
    sget-object v1, Lorg/gnucash/android/ui/account/AccountFormFragment$7;->$SwitchMap$org$gnucash$android$model$AccountType:[I

    invoke-virtual {p1}, Lorg/gnucash/android/model/AccountType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 670
    invoke-static {}, Lorg/gnucash/android/model/AccountType;->values()[Lorg/gnucash/android/model/AccountType;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\[|]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 641
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/gnucash/android/model/AccountType;->EQUITY:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v2}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 645
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v2}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/gnucash/android/model/AccountType;->INCOME:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v2}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 657
    :pswitch_2
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getAccountTypeStringList()Ljava/util/List;

    move-result-object v0

    .line 658
    .local v0, "accountTypeStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lorg/gnucash/android/model/AccountType;->EQUITY:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 659
    sget-object v1, Lorg/gnucash/android/model/AccountType;->EXPENSE:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 660
    sget-object v1, Lorg/gnucash/android/model/AccountType;->INCOME:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 661
    sget-object v1, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v1}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 666
    .end local v0    # "accountTypeStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/gnucash/android/model/AccountType;->TRADING:Lorg/gnucash/android/model/AccountType;

    invoke-virtual {v2}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getEnteredName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedAccountType()Lorg/gnucash/android/model/AccountType;
    .locals 4

    .prologue
    .line 840
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 841
    .local v1, "selectedAccountTypeIndex":I
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "accountTypeEntries":[Ljava/lang/String;
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/gnucash/android/model/AccountType;->valueOf(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v2

    return-object v2
.end method

.method private initializeViews()V
    .locals 4

    .prologue
    .line 423
    sget-object v1, Lorg/gnucash/android/model/Money;->DEFAULT_CURRENCY_CODE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setSelectedCurrency(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mColorSquare:Lorg/gnucash/android/ui/colorpicker/ColorSquare;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/colorpicker/ColorSquare;->setBackgroundColor(I)V

    .line 425
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "parent_account_uid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountType(Ljava/lang/String;)Lorg/gnucash/android/model/AccountType;

    move-result-object v0

    .line 430
    .local v0, "parentAccountType":Lorg/gnucash/android/model/AccountType;
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setAccountTypeSelection(Lorg/gnucash/android/model/AccountType;)V

    .line 431
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->loadParentAccountList(Lorg/gnucash/android/model/AccountType;)V

    .line 432
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setParentAccountSelection(J)V

    .line 435
    .end local v0    # "parentAccountType":Lorg/gnucash/android/model/AccountType;
    :cond_0
    return-void
.end method

.method private initializeViewsWithAccount(Lorg/gnucash/android/model/Account;)V
    .locals 12
    .param p1, "account"    # Lorg/gnucash/android/model/Account;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Account cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 370
    :cond_0
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/account/AccountFormFragment;->loadParentAccountList(Lorg/gnucash/android/model/AccountType;)V

    .line 371
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    .line 372
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 374
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountUID:Ljava/lang/String;

    iput-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    .line 377
    :cond_1
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 378
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v8, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setParentAccountSelection(J)V

    .line 381
    :cond_2
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getCommodity()Lorg/gnucash/android/model/Commodity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/gnucash/android/model/Commodity;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "currencyCode":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setSelectedCurrency(Ljava/lang/String;)V

    .line 384
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v8, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    invoke-virtual {v8}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getTransactionMaxSplitNum(Ljava/lang/String;)I

    move-result v7

    if-le v7, v11, :cond_3

    .line 387
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v10}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 390
    :cond_3
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mNameEditText:Landroid/widget/EditText;

    iget-object v8, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 392
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescriptionEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-boolean v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mUseDoubleEntry:Z

    if-eqz v7, :cond_4

    .line 395
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getDefaultTransferAccountUID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 396
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getDefaultTransferAccountUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v4

    .line 397
    .local v4, "doubleDefaultAccountId":J
    invoke-direct {p0, v4, v5, v11}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setDefaultTransferAccountSelection(JZ)V

    .line 412
    .end local v4    # "doubleDefaultAccountId":J
    :cond_4
    :goto_0
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mPlaceholderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->isPlaceholderAccount()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 413
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v7

    iput v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mSelectedColor:I

    .line 414
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mColorSquare:Lorg/gnucash/android/ui/colorpicker/ColorSquare;

    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/gnucash/android/ui/colorpicker/ColorSquare;->setBackgroundColor(I)V

    .line 416
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v7

    invoke-direct {p0, v7}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setAccountTypeSelection(Lorg/gnucash/android/model/AccountType;)V

    .line 417
    return-void

    .line 399
    :cond_5
    invoke-virtual {p1}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "currentAccountUID":Ljava/lang/String;
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, "rootAccountUID":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 402
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v8, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v8, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getDefaultTransferAccountID(J)J

    move-result-wide v2

    .line 403
    .local v2, "defaultTransferAccountID":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_6

    .line 404
    invoke-direct {p0, v2, v3, v10}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setDefaultTransferAccountSelection(JZ)V

    goto :goto_0

    .line 407
    :cond_6
    iget-object v7, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v7, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getParentAccountUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    goto :goto_1
.end method

.method private loadAccountTypesList()V
    .locals 4

    .prologue
    .line 691
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "accountTypes":[Ljava/lang/String;
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 693
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1090003

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 695
    .local v1, "accountTypesAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 696
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 698
    return-void
.end method

.method private loadDefaultTransferAccountList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid != \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'  AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_placeholder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is_hidden"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "condition":Ljava/lang/String;
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lorg/gnucash/android/model/AccountType;->ROOT:Lorg/gnucash/android/model/AccountType;

    .line 579
    invoke-virtual {v4}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 578
    invoke-virtual {v2, v0, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 581
    .local v1, "defaultTransferAccountCursor":Landroid/database/Cursor;
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 582
    invoke-direct {p0, v5}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setDefaultTransferAccountInputsVisible(Z)V

    .line 585
    :cond_0
    new-instance v2, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 587
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 588
    return-void
.end method

.method private loadParentAccountList(Lorg/gnucash/android/model/AccountType;)V
    .locals 11
    .param p1, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    const v10, 0x7f090125

    const v9, 0x7f090119

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 597
    invoke-direct {p0, p1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getAllowedParentAccountTypes(Lorg/gnucash/android/model/AccountType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is_hidden"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!=1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "condition":Ljava/lang/String;
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    if-eqz v4, :cond_1

    .line 600
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v5, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    invoke-virtual {v5}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getDescendantAccountUIDs(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescendantAccountUIDs:Ljava/util/List;

    .line 601
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v4}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "rootAccountUID":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescendantAccountUIDs:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 603
    .local v1, "descendantAccountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 604
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND (uid NOT IN ( \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    .line 607
    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ) )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .end local v1    # "descendantAccountUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "rootAccountUID":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 612
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 614
    :cond_2
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v4, v0, v7}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->fetchAccountsOrderedByFullName(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursor:Landroid/database/Cursor;

    .line 615
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 616
    .local v3, "view":Landroid/view/View;
    sget-boolean v4, Lorg/gnucash/android/ui/account/AccountFormFragment;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 617
    :cond_3
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_4

    .line 618
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 619
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 620
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :goto_0
    new-instance v4, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;

    .line 627
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursor:Landroid/database/Cursor;

    invoke-direct {v4, v5, v6}, Lorg/gnucash/android/util/QualifiedAccountNameCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 628
    iget-object v4, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 629
    return-void

    .line 622
    :cond_4
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 623
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static newInstance()Lorg/gnucash/android/ui/account/AccountFormFragment;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Lorg/gnucash/android/ui/account/AccountFormFragment;

    invoke-direct {v0}, Lorg/gnucash/android/ui/account/AccountFormFragment;-><init>()V

    .line 233
    .local v0, "f":Lorg/gnucash/android/ui/account/AccountFormFragment;
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    iput-object v1, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 234
    return-object v0
.end method

.method private saveAccount()V
    .locals 24

    .prologue
    .line 732
    const-string v20, "AccountFormFragment"

    const-string v21, "Saving account"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 734
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 736
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v2, "accountsToUpdate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/gnucash/android/model/Account;>;"
    const/4 v11, 0x0

    .line 738
    .local v11, "nameChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    .line 739
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getEnteredName()Ljava/lang/String;

    move-result-object v10

    .line 740
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mTextInputLayout:Landroid/support/design/widget/TextInputLayout;

    move-object/from16 v20, v0

    const v21, 0x7f0f01ff

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/design/widget/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 833
    .end local v10    # "name":Ljava/lang/String;
    :goto_0
    return-void

    .line 745
    .restart local v10    # "name":Ljava/lang/String;
    :cond_1
    new-instance v20, Lorg/gnucash/android/model/Account;

    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getEnteredName()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lorg/gnucash/android/model/Account;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v21, v0

    sget-object v22, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->insert:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    invoke-virtual/range {v20 .. v22}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->addRecord(Lorg/gnucash/android/model/Account;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)V

    .line 753
    .end local v10    # "name":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    .line 754
    .local v6, "commodityId":J
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getRecord(J)Lorg/gnucash/android/model/BaseModel;

    move-result-object v4

    check-cast v4, Lorg/gnucash/android/model/Commodity;

    .line 755
    .local v4, "commodity":Lorg/gnucash/android/model/Commodity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lorg/gnucash/android/model/Account;->setCommodity(Lorg/gnucash/android/model/Commodity;)V

    .line 757
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getSelectedAccountType()Lorg/gnucash/android/model/AccountType;

    move-result-object v18

    .line 758
    .local v18, "selectedAccountType":Lorg/gnucash/android/model/AccountType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/gnucash/android/model/Account;->setAccountType(Lorg/gnucash/android/model/AccountType;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescriptionEditText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/gnucash/android/model/Account;->setDescription(Ljava/lang/String;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mPlaceholderCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lorg/gnucash/android/model/Account;->setPlaceHolderFlag(Z)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mSelectedColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/gnucash/android/model/Account;->setColor(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v14

    .line 768
    .local v14, "newParentAccountId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v13

    .line 769
    .local v13, "newParentAccountUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 775
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lorg/gnucash/android/model/Account;->setParentUID(Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCheckBox:Landroid/widget/CheckBox;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    .line 778
    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v20

    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v20, v20, v22

    if-eqz v20, :cond_8

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v8

    .line 780
    .local v8, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getUID(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/gnucash/android/model/Account;->setDefaultTransferAccountUID(Ljava/lang/String;)V

    .line 786
    .end local v8    # "id":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    const-wide/16 v16, -0x1

    .line 788
    .local v16, "parentAccountId":J
    :goto_4
    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescendantAccountUIDs:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    cmp-long v20, v14, v16

    if-eqz v20, :cond_d

    .line 791
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountId:J

    move-wide/from16 v20, v0

    cmp-long v20, v14, v20

    if-nez v20, :cond_a

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v12

    .line 798
    .local v12, "newAccountFullName":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescendantAccountUIDs:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    .line 801
    if-nez v11, :cond_3

    cmp-long v20, v16, v14

    if-eqz v20, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescendantAccountUIDs:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "uid IN (\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\',\'"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescendantAccountUIDs:Ljava/util/List;

    move-object/from16 v23, v0

    .line 805
    invoke-static/range {v22 .. v23}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\')"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 803
    invoke-virtual/range {v20 .. v23}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getSimpleAccountList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 808
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 809
    .local v5, "mapAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/gnucash/android/model/Account;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Account;

    .local v3, "acct":Lorg/gnucash/android/model/Account;
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 749
    .end local v3    # "acct":Lorg/gnucash/android/model/Account;
    .end local v4    # "commodity":Lorg/gnucash/android/model/Commodity;
    .end local v5    # "mapAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/gnucash/android/model/Account;>;"
    .end local v6    # "commodityId":J
    .end local v12    # "newAccountFullName":Ljava/lang/String;
    .end local v13    # "newParentAccountUID":Ljava/lang/String;
    .end local v14    # "newParentAccountId":J
    .end local v16    # "parentAccountId":J
    .end local v18    # "selectedAccountType":Lorg/gnucash/android/model/AccountType;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getEnteredName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6

    const/4 v11, 0x1

    .line 750
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getEnteredName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/gnucash/android/model/Account;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 749
    :cond_6
    const/4 v11, 0x0

    goto :goto_7

    .line 772
    .restart local v4    # "commodity":Lorg/gnucash/android/model/Commodity;
    .restart local v6    # "commodityId":J
    .restart local v18    # "selectedAccountType":Lorg/gnucash/android/model/AccountType;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountUID:Ljava/lang/String;

    .line 773
    .restart local v13    # "newParentAccountUID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountId:J

    .restart local v14    # "newParentAccountId":J
    goto/16 :goto_2

    .line 783
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lorg/gnucash/android/model/Account;->setDefaultTransferAccountUID(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 786
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountUID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v16

    goto/16 :goto_4

    .line 795
    .restart local v16    # "parentAccountId":J
    :cond_a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getAccountFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v21, v0

    .line 796
    invoke-virtual/range {v21 .. v21}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "newAccountFullName":Ljava/lang/String;
    goto/16 :goto_5

    .line 810
    .restart local v5    # "mapAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/gnucash/android/model/Account;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDescendantAccountUIDs:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 812
    .local v19, "uid":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/gnucash/android/model/Account;

    .line 814
    .restart local v3    # "acct":Lorg/gnucash/android/model/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/gnucash/android/model/Account;->getUID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 815
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    goto :goto_8

    .line 818
    :cond_c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 819
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getParentUID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/gnucash/android/model/Account;

    invoke-virtual/range {v20 .. v20}, Lorg/gnucash/android/model/Account;->getFullName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 821
    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 818
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/gnucash/android/model/Account;->setFullName(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 827
    .end local v3    # "acct":Lorg/gnucash/android/model/Account;
    .end local v5    # "mapAccount":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/gnucash/android/model/Account;>;"
    .end local v12    # "newAccountFullName":Ljava/lang/String;
    .end local v19    # "uid":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-object/from16 v20, v0

    sget-object v21, Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;->update:Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->bulkAddRecords(Ljava/util/List;Lorg/gnucash/android/db/adapter/DatabaseAdapter$UpdateMethod;)J

    .line 832
    invoke-direct/range {p0 .. p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->finishFragment()V

    goto/16 :goto_0
.end method

.method private setAccountTypeSelection(Lorg/gnucash/android/model/AccountType;)V
    .locals 4
    .param p1, "accountType"    # Lorg/gnucash/android/model/AccountType;

    .prologue
    .line 442
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "accountTypeEntries":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/gnucash/android/model/AccountType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 444
    .local v1, "accountTypeIndex":I
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 445
    return-void
.end method

.method private setDefaultTransferAccountInputsVisible(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 452
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 453
    .local v1, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 454
    .local v0, "view":Landroid/view/View;
    sget-boolean v2, Lorg/gnucash/android/ui/account/AccountFormFragment;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 452
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "visibility":I
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 455
    .restart local v0    # "view":Landroid/view/View;
    .restart local v1    # "visibility":I
    :cond_1
    const v2, 0x7f090123

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    const v2, 0x7f090113

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    return-void
.end method

.method private setDefaultTransferAccountSelection(JZ)V
    .locals 5
    .param p1, "defaultTransferAccountId"    # J
    .param p3, "enableTransferAccount"    # Z

    .prologue
    .line 499
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 500
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 501
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 505
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 506
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_1

    .line 507
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 511
    .end local v0    # "pos":I
    :cond_0
    return-void

    .line 505
    .restart local v0    # "pos":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setParentAccountSelection(J)V
    .locals 5
    .param p1, "parentAccountId"    # J

    .prologue
    const/4 v4, 0x1

    .line 480
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    iget-wide v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountId:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_1
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 485
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_2

    .line 486
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 487
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 488
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    .line 484
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setSelectedCurrency(Ljava/lang/String;)V
    .locals 8
    .param p1, "currencyCode"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-static {}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;

    move-result-object v0

    .line 465
    .local v0, "commodityDbAdapter":Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;
    invoke-virtual {v0, p1}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getCommodityUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/gnucash/android/db/adapter/CommoditiesDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v2

    .line 466
    .local v2, "commodityId":J
    const/4 v4, 0x0

    .line 467
    .local v4, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 468
    iget-object v5, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->getItemIdAtPosition(I)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 469
    move v4, v1

    .line 467
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    :cond_1
    iget-object v5, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 473
    return-void
.end method

.method private showColorPickerDialog()V
    .locals 7

    .prologue
    .line 534
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 535
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const v1, -0x333334

    .line 536
    .local v1, "currentColor":I
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    if-eqz v3, :cond_0

    .line 537
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    invoke-virtual {v3}, Lorg/gnucash/android/model/Account;->getColor()I

    move-result v1

    .line 540
    :cond_0
    const v3, 0x7f0f003c

    .line 542
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getAccountColorOptions()[I

    move-result-object v4

    const/4 v5, 0x4

    const/16 v6, 0xc

    .line 540
    invoke-static {v3, v4, v1, v5, v6}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->newInstance(I[IIII)Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;

    move-result-object v0

    .line 544
    .local v0, "colorPickerDialogFragment":Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;
    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mColorSelectedListener:Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-virtual {v0, v3}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->setOnColorSelectedListener(Lorg/gnucash/android/ui/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 545
    const-string v3, "color_picker_dialog"

    invoke-virtual {v0, v2, v3}, Lorg/gnucash/android/ui/colorpicker/ColorPickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 546
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 323
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 325
    new-instance v0, Lorg/gnucash/android/util/CommoditiesCursorAdapter;

    .line 326
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v0, v2, v3}, Lorg/gnucash/android/util/CommoditiesCursorAdapter;-><init>(Landroid/content/Context;I)V

    .line 327
    .local v0, "commoditiesAdapter":Lorg/gnucash/android/util/CommoditiesCursorAdapter;
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Lorg/gnucash/android/util/CommoditiesCursorAdapter;->setDropDownViewResource(I)V

    .line 329
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mCurrencySpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 332
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountUID:Ljava/lang/String;

    .line 334
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 335
    .local v1, "supportActionBar":Landroid/support/v7/app/ActionBar;
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountUID:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 336
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getRecord(Ljava/lang/String;)Lorg/gnucash/android/model/BaseModel;

    move-result-object v2

    check-cast v2, Lorg/gnucash/android/model/Account;

    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    .line 337
    const v2, 0x7f0f01bc

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 342
    :goto_0
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    invoke-virtual {v2}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getOrCreateGnuCashRootAccountUID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountUID:Ljava/lang/String;

    .line 343
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountUID:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    iget-object v3, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getID(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mRootAccountId:J

    .line 347
    :cond_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->loadAccountTypesList()V

    .line 348
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->loadDefaultTransferAccountList()V

    .line 349
    iget-boolean v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mUseDoubleEntry:Z

    invoke-direct {p0, v2}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setDefaultTransferAccountInputsVisible(Z)V

    .line 351
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    if-eqz v2, :cond_2

    .line 352
    iget-object v2, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccount:Lorg/gnucash/android/model/Account;

    invoke-direct {p0, v2}, Lorg/gnucash/android/ui/account/AccountFormFragment;->initializeViewsWithAccount(Lorg/gnucash/android/model/Account;)V

    .line 354
    invoke-virtual {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 359
    :goto_1
    return-void

    .line 339
    :cond_1
    const v2, 0x7f0f01b1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->initializeViews()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 239
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0, v2}, Lorg/gnucash/android/ui/account/AccountFormFragment;->setHasOptionsMenu(Z)V

    .line 241
    invoke-static {}, Lorg/gnucash/android/db/adapter/AccountsDbAdapter;->getInstance()Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountsDbAdapter:Lorg/gnucash/android/db/adapter/AccountsDbAdapter;

    .line 243
    invoke-static {}, Lorg/gnucash/android/ui/settings/PreferenceActivity;->getActiveBookSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 244
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const v1, 0x7f0f00bb

    invoke-virtual {p0, v1}, Lorg/gnucash/android/ui/account/AccountFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mUseDoubleEntry:Z

    .line 245
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 550
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 551
    const v0, 0x7f0c0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 552
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 252
    const v1, 0x7f0b0050

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 255
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mNameEditText:Landroid/widget/EditText;

    new-instance v2, Lorg/gnucash/android/ui/account/AccountFormFragment$2;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/account/AccountFormFragment$2;-><init>(Lorg/gnucash/android/ui/account/AccountFormFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 274
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mAccountTypeSpinner:Landroid/widget/Spinner;

    new-instance v2, Lorg/gnucash/android/ui/account/AccountFormFragment$3;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/account/AccountFormFragment$3;-><init>(Lorg/gnucash/android/ui/account/AccountFormFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 289
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 291
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lorg/gnucash/android/ui/account/AccountFormFragment$4;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/account/AccountFormFragment$4;-><init>(Lorg/gnucash/android/ui/account/AccountFormFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 300
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lorg/gnucash/android/ui/account/AccountFormFragment$5;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/account/AccountFormFragment$5;-><init>(Lorg/gnucash/android/ui/account/AccountFormFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 307
    iget-object v1, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mColorSquare:Lorg/gnucash/android/ui/colorpicker/ColorSquare;

    new-instance v2, Lorg/gnucash/android/ui/account/AccountFormFragment$6;

    invoke-direct {v2, p0}, Lorg/gnucash/android/ui/account/AccountFormFragment$6;-><init>(Lorg/gnucash/android/ui/account/AccountFormFragment;)V

    invoke-virtual {v1, v2}, Lorg/gnucash/android/ui/colorpicker/ColorSquare;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 720
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 721
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mParentAccountCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_0
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lorg/gnucash/android/ui/account/AccountFormFragment;->mDefaultTransferAccountCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 726
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 556
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 566
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 558
    :sswitch_0
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->saveAccount()V

    goto :goto_0

    .line 562
    :sswitch_1
    invoke-direct {p0}, Lorg/gnucash/android/ui/account/AccountFormFragment;->finishFragment()V

    goto :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f090141 -> :sswitch_0
    .end sparse-switch
.end method
