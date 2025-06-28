# 🚀 Mentimeter Setup Guide for Gray Zones Workshop

## Quick Setup (5 minutes)

### Step 1: Create Mentimeter Account
1. Go to [www.mentimeter.com](https://www.mentimeter.com)
2. Sign up for free account (or use existing)
3. Choose "Create Presentation" 

### Step 2: Create 5 Presentations

#### 📊 Presentation 1: Emotional Response (Slide 8)
- **Type**: Word Cloud
- **Question**: "In one word, what would you feel upon hearing about this collision?"
- **Settings**: 
  - ✅ Anonymous responses
  - ✅ Real-time results
  - ✅ Profanity filter ON

#### 💭 Presentation 2: Information Gaps (Slide 9)
- **Type**: Open Text
- **Question**: "What missing information created the most uncertainty for the crisis committee in those first moments?"
- **Settings**:
  - ✅ Anonymous responses
  - ✅ Multiple responses per participant
  - ✅ Character limit: 200

#### 👥 Presentation 3: Responsibility Confusion (Slide 10)
- **Type**: Open Text  
- **Question**: "Which responsibilities fell into gray areas? Was there confusion about who should do what?"
- **Settings**: Same as above

#### 🎯 Presentation 4: Over-reliance (Slide 11)
- **Type**: Open Text
- **Question**: "What did the committee over-rely on during the initial crisis?"
- **Settings**: Same as above

#### 🚧 Presentation 5: Human Limitations (Slide 12)
- **Type**: Open Text
- **Question**: "What human limitations or context constraints affected crisis management?"
- **Settings**: Same as above

### Step 3: Get the Codes
For each presentation:
1. Click "Present" button
2. **Copy the 6-digit code** (e.g., "123456")
3. **Download QR code** (optional but recommended)

### Step 4: Update Your Workshop

#### Option A: Use the Script (Recommended)
```bash
./update-mentimeter.sh
```
Enter your codes when prompted.

#### Option B: Manual Update
1. Open `index.html` in text editor
2. Find the `mentimeterConfig` object (around line 501)
3. Replace placeholder codes with your real codes:

```javascript
const mentimeterConfig = {
  enabled: true,
  baseUrl: 'https://www.menti.com',
  eventCode: 'YOUR_MAIN_CODE', // Use one of your presentation codes
  presentations: {
    warmup: { id: 'WARMUP_CODE', type: 'wordcloud', question: 'emotional-response' },
    uncertainty: { id: 'UNCERTAINTY_CODE', type: 'opentext', question: 'information-gaps' },
    ownership: { id: 'OWNERSHIP_CODE', type: 'opentext', question: 'responsibility-confusion' },
    overreliance: { id: 'OVERRELIANCE_CODE', type: 'opentext', question: 'assumptions-dependencies' },
    constraints: { id: 'CONSTRAINTS_CODE', type: 'opentext', question: 'human-limitations' }
  }
};
```

### Step 5: Add QR Images (Optional)
If you downloaded QR codes, save them as:
- `images/qr-codes/warmup.png`
- `images/qr-codes/uncertainty.png`
- `images/qr-codes/ownership.png`
- `images/qr-codes/overreliance.png`
- `images/qr-codes/constraints.png`

## Workshop Controls

### During Presentation
- **Shift + M**: Toggle Mentimeter on/off
- **Shift + D**: Demo mode (simulated responses)
- **Shift + R**: Reset current poll

### Expected Flow
1. **Slide 8**: Word cloud fills with emotions
2. **Slides 9-12**: Text responses appear in real-time  
3. **Slide 13**: Discuss patterns and insights

## Backup Plan
If Mentimeter fails:
- Press **Shift + M** to disable
- Workshop switches to discussion mode
- Questions become group reflection points

## Testing Before Workshop
1. Open workshop on presentation screen
2. Navigate to slide 8
3. Join with your phone using the code
4. Test one response on each poll
5. Verify responses appear in presenter view

## Troubleshooting

| Problem | Solution |
|---------|----------|
| QR codes not showing | Check image paths, use text codes |
| Codes don't work | Verify codes in Mentimeter dashboard |
| No responses appearing | Check WiFi, try demo mode |
| Wrong questions showing | Verify presentation IDs match slides |

---

**🎯 Goal**: 30-50 participants, 2-5 responses per person, 3-4 minutes per poll

**⏰ Total interactive time**: ~15 minutes (Slides 8-12)

**📊 Expected output**: Rich qualitative data for Gray Zones analysis
