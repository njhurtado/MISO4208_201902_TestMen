.class public Lcom/tech/freak/wizardpager/ui/TextFragment;
.super Landroid/support/v4/app/Fragment;
.source "TextFragment.java"


# static fields
.field protected static final ARG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

.field protected mEditTextInput:Landroid/widget/EditText;

.field private mKey:Ljava/lang/String;

.field private mPage:Lcom/tech/freak/wizardpager/model/Page;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tech/freak/wizardpager/ui/TextFragment;)Lcom/tech/freak/wizardpager/model/Page;
    .locals 1
    .param p0, "x0"    # Lcom/tech/freak/wizardpager/ui/TextFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/tech/freak/wizardpager/ui/TextFragment;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/tech/freak/wizardpager/ui/TextFragment;

    invoke-direct {v1}, Lcom/tech/freak/wizardpager/ui/TextFragment;-><init>()V

    .line 33
    .local v1, "f":Lcom/tech/freak/wizardpager/ui/TextFragment;
    invoke-virtual {v1, v0}, Lcom/tech/freak/wizardpager/ui/TextFragment;->setArguments(Landroid/os/Bundle;)V

    .line 34
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 63
    instance-of v0, p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Activity must implement PageFragmentCallbacks"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    check-cast p1, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/TextFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mKey:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;->onGetPage(Ljava/lang/String;)Lcom/tech/freak/wizardpager/model/Page;

    move-result-object v1

    iput-object v1, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    sget v1, Lcom/tech/freak/wizardpager/R$layout;->fragment_page_text:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v2}, Lcom/tech/freak/wizardpager/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v1, Lcom/tech/freak/wizardpager/R$id;->editTextInput:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mEditTextInput:Landroid/widget/EditText;

    .line 55
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mEditTextInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mPage:Lcom/tech/freak/wizardpager/model/Page;

    invoke-virtual {v2}, Lcom/tech/freak/wizardpager/model/Page;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mCallbacks:Lcom/tech/freak/wizardpager/ui/PageFragmentCallbacks;

    .line 75
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/TextFragment;->setInputType()V

    .line 81
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mEditTextInput:Landroid/widget/EditText;

    new-instance v1, Lcom/tech/freak/wizardpager/ui/TextFragment$1;

    invoke-direct {v1, p0}, Lcom/tech/freak/wizardpager/ui/TextFragment$1;-><init>(Lcom/tech/freak/wizardpager/ui/TextFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 102
    return-void
.end method

.method protected setInputType()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mEditTextInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 106
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 3
    .param p1, "menuVisible"    # Z

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 115
    iget-object v1, p0, Lcom/tech/freak/wizardpager/ui/TextFragment;->mEditTextInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/TextFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 118
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/tech/freak/wizardpager/ui/TextFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 122
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
