def rangeToStr(b,e):
    return "{}->{}".format(b,e) if b != e else str(b)

class Solution:
    def summaryRanges(self, nums: List[int]) -> List[str]:
        ranges = []
        beg = 0
        for i in range(1, len(nums)+1):
            if i == len(nums) or nums[i] != nums[i-1]+1:
                ranges.append(rangeToStr(nums[beg], nums[i-1]))
                beg = i
        return ranges
