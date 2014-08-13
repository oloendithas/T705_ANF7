.class public final Lcom/android/contacts/preference/SortOrderPreference;
.super Landroid/preference/ListPreference;
.source "SortOrderPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/android/contacts/preference/SortOrderPreference;->prepare()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/android/contacts/preference/SortOrderPreference;->prepare()V

    .line 43
    return-void
.end method

.method private prepare()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 46
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 48
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0192

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0193

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0192

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0193

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "newValue":I
    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setSortOrder(I)V

    .line 81
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 83
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
